import requests
import os
import re
from typing import Any
from concurrent.futures import ThreadPoolExecutor
from util import (
    update_util,
    retry_util,
    acquire_util,
    sha256_util,
    github_sha256_util,
    git_util,
    fallback_source_util,
)

token: str | None = os.environ.get("GITHUB_TOKEN")
headers: dict[str, str] = {"Authorization": f"Bearer {token}"} if token else {}


# Formula
def update_stable_diffusion_cpp() -> None:
    releases: list[dict[str, Any]] = retry_util(
        lambda: requests.get(
            "https://api.github.com/repos/MZWNET/actions/releases?per_page=100",
            headers=headers,
        ).json()
    )
    release: dict[str, Any] = {}
    for r in releases:
        if "sd-master" in r["tag_name"]:
            release = r
            break
    if release == {}:
        raise ValueError("Failed to find the correct release for stable-diffusion.cpp.")
    version = release["tag_name"].replace("sd-master-", "0.0.").replace("-", "_")
    url = f"https://github.com/MZWNET/actions/releases/download/{release['tag_name']}/{release['tag_name']}-bin-macos-metal-arm64.zip"
    sha256 = retry_util(lambda: github_sha256_util(release, url))
    update_util("Formula/stable-diffusion.cpp", ver=version, url=url, sha256=sha256)


def update_hfd() -> None:
    release: dict[str, str] = retry_util(
        lambda: git_util(acquire_util("Formula/hfd", "head"), "hfd")
    )
    url = f"{acquire_util('Formula/hfd', 'homepage')}/raw/{release['revision']}/hfd.sh"
    sha256 = retry_util(lambda: sha256_util(url))
    update_util("Formula/hfd", ver=release["version"], url=url, sha256=sha256)


def update_sing_box() -> None:
    def sing_box_formula_sources(
        releases: list[dict[str, Any]],
    ) -> dict[str, dict[str, Any]]:
        release_by_type: dict[str, dict[str, Any]] = {
            "stable": {},
            "beta": {},
            "alpha": {},
        }

        def release_type(tag_name: str) -> str:
            version = tag_name.removeprefix("v")
            if re.match(r"^\d+(?:\.\d+)*-alpha(?:\.\d+)*$", version):
                return "alpha"
            if re.match(r"^\d+(?:\.\d+)*-beta(?:\.\d+)*$", version):
                return "beta"
            if re.match(r"^\d+(?:\.\d+)*$", version):
                return "stable"
            return ""

        def asset_info(release: dict[str, Any]) -> dict[str, str]:
            version = release["tag_name"].removeprefix("v")
            asset_name = f"sing-box-{version}-darwin-arm64.tar.gz"
            for asset in release["assets"]:
                if asset["name"] != asset_name:
                    continue
                return {
                    "version": version,
                    "url": asset["browser_download_url"],
                }
            raise ValueError(f"Failed to find the correct asset for sing-box {version}")

        for release in releases:
            type_name = release_type(release["tag_name"])
            if type_name and release_by_type[type_name] == {}:
                release_by_type[type_name] = release

        info_by_type = {
            release_type_name: asset_info(release)
            for release_type_name, release in release_by_type.items()
            if release != {}
        }

        source_type_by_channel = fallback_source_util(
            info_by_type,
            {
                "alpha": ["alpha", "beta", "stable"],
                "beta": ["beta", "stable"],
            },
        )

        return {
            channel: {
                "release": release_by_type[source_type],
                "version": info_by_type[source_type]["version"],
                "url": info_by_type[source_type]["url"],
            }
            for channel, source_type in source_type_by_channel.items()
        }

    releases: list[dict[str, Any]] = retry_util(
        lambda: requests.get(
            "https://api.github.com/repos/SagerNet/sing-box/releases?per_page=100",
            headers=headers,
        ).json()
    )
    formula_by_channel: dict[str, str] = {
        "alpha": "Formula/sing-box-alpha",
        "beta": "Formula/sing-box-beta",
    }
    cask_by_channel: dict[str, str] = {
        "alpha": "Casks/sfm-alpha",
        "beta": "Casks/sfm-beta",
    }
    sources = sing_box_formula_sources(releases)

    def sfm_asset_url(release: dict[str, Any], version: str) -> str:
        asset_name = f"SFM-{version}-Apple.pkg"
        for asset in release["assets"]:
            if asset["name"] == asset_name:
                return asset["browser_download_url"]
        raise ValueError(f"Failed to find the correct asset for SFM {version}")

    for channel, source in sources.items():
        sha256 = retry_util(
            lambda: github_sha256_util(source["release"], source["url"])
        )
        update_util(
            formula_by_channel[channel],
            ver=source["version"],
            url=source["url"],
            sha256=sha256,
        )
    for channel, source in sources.items():
        sfm_url = sfm_asset_url(source["release"], source["version"])
        sfm_sha256 = retry_util(lambda: github_sha256_util(source["release"], sfm_url))
        update_util(
            cask_by_channel[channel],
            ver=source["version"],
            url=sfm_url,
            sha256=sfm_sha256,
        )


def update_gryph() -> None:
    release: dict[str, Any] = retry_util(
        lambda: requests.get(
            "https://api.github.com/repos/safedep/gryph/releases/latest",
            headers=headers,
        ).json()
    )
    version = release["tag_name"].replace("v", "")
    url = f"https://github.com/safedep/gryph/releases/download/v{version}/gryph_Darwin_all.tar.gz"
    sha256 = retry_util(lambda: github_sha256_util(release, url))
    update_util("Formula/gryph", ver=version, url=url, sha256=sha256)


def update_cliproxyapiplus() -> None:
    release: dict[str, Any] = retry_util(
        lambda: requests.get(
            "https://api.github.com/repos/kaitranntt/CLIProxyAPIPlus/releases/latest",
            headers=headers,
        ).json()
    )
    url = f"https://github.com/kaitranntt/CLIProxyAPIPlus/releases/download/{release['tag_name']}/CLIProxyAPIPlus_{release['tag_name'].replace('v', '')}_darwin_aarch64_no-plugin.tar.gz"
    sha256 = retry_util(lambda: github_sha256_util(release, url))
    update_util(
        "Formula/cliproxyapiplus",
        ver=release["tag_name"].replace("v", "").replace("-", ","),
        url=url,
        sha256=sha256,
    )


def update_kiro_rs() -> None:
    releases: list[dict[str, Any]] = retry_util(
        lambda: requests.get(
            "https://api.github.com/repos/MZWNET/actions/releases?per_page=100",
            headers=headers,
        ).json()
    )
    release: dict[str, Any] = {}
    for r in releases:
        if "kiro-rs" in r["tag_name"]:
            release = r
            break
    if release == {}:
        raise ValueError("Failed to find the correct release for kiro.rs.")
    version = release["tag_name"].replace("kiro-rs-", "").replace("v", "")
    url = f"https://github.com/MZWNET/actions/releases/download/kiro-rs-v{version}/kiro-rs-v{version}-aarch64-apple-darwin.zip"
    sha256 = retry_util(lambda: github_sha256_util(release, url))
    update_util("Formula/kiro.rs", ver=version, url=url, sha256=sha256)


def update_manboster() -> None:
    formula_by_release_type: dict[str, str] = {
        "stable": "Formula/manboster",
        "rc": "Formula/manboster-rc",
        "beta": "Formula/manboster-beta",
        "canary": "Formula/manboster-canary",
    }
    asset_pattern_by_release_type: dict[str, re.Pattern[str]] = {
        "stable": re.compile(
            r"^manboster_(?P<version>\d+(?:\.\d+)*)_darwin_arm64\.tar\.gz$"
        ),
        "rc": re.compile(
            r"^manboster_(?P<version>\d+(?:\.\d+)*-rc)_darwin_arm64\.tar\.gz$"
        ),
        "beta": re.compile(
            r"^manboster_(?P<version>\d+(?:\.\d+)*-beta)_darwin_arm64\.tar\.gz$"
        ),
        "canary": re.compile(
            r"^manboster_(?P<version>\d+(?:\.\d+)*)-(?P<commit>[0-9a-f]{6,40})_darwin_arm64\.tar\.gz$"
        ),
    }

    def release_type(tag_name: str) -> str:
        if tag_name == "canary":
            return "canary"
        if tag_name.endswith("-rc"):
            return "rc"
        if tag_name.endswith("-beta"):
            return "beta"
        return "stable"

    def asset_info(release: dict[str, Any], release_type_name: str) -> dict[str, str]:
        asset_pattern = asset_pattern_by_release_type[release_type_name]
        for asset in release["assets"]:
            version_match = asset_pattern.match(asset["name"])
            if version_match is None:
                continue
            version = version_match.group("version")
            if release_type_name == "canary":
                version = f"{version},{version_match.group('commit')}"
            return {
                "version": version,
                "url": asset["browser_download_url"],
            }
        raise ValueError(
            f"Failed to find the correct asset for manboster {release_type_name}"
        )

    releases: list[dict[str, Any]] = retry_util(
        lambda: requests.get(
            "https://api.github.com/repos/manboster/manboster/releases?per_page=100",
            headers=headers,
        ).json()
    )
    release_by_type: dict[str, dict[str, Any]] = {
        release_type_name: {} for release_type_name in formula_by_release_type
    }
    for r in releases:
        type_name = release_type(r["tag_name"])
        if release_by_type[type_name] == {}:
            release_by_type[type_name] = r

    missing = [
        release_type_name
        for release_type_name, value in release_by_type.items()
        if value == {} and release_type_name != "beta"
    ]
    if missing:
        raise ValueError(f"Failed to find manboster releases: {', '.join(missing)}")

    info_by_type = {
        release_type_name: asset_info(
            release_by_type[release_type_name], release_type_name
        )
        for release_type_name in formula_by_release_type
        if release_by_type[release_type_name] != {}
    }

    source_type_by_release_type = fallback_source_util(
        info_by_type,
        {
            "stable": ["stable"],
            "rc": ["rc", "stable"],
            "beta": ["beta", "rc", "stable"],
            "canary": ["canary"],
        },
    )

    for release_type_name, formula_name in formula_by_release_type.items():
        source_type = source_type_by_release_type[release_type_name]
        release = release_by_type[source_type]
        info = info_by_type[source_type]
        sha256 = retry_util(lambda: github_sha256_util(release, info["url"]))
        update_util(formula_name, ver=info["version"], url=info["url"], sha256=sha256)


def update_crossover_trial_reset() -> None:
    release: dict[str, str] = retry_util(
        lambda: git_util(
            acquire_util("Formula/crossover-trial-reset", "head"), "reset_crossover.sh"
        )
    )
    url = f"{acquire_util('Formula/crossover-trial-reset', 'homepage')}/raw/refs/heads/{release['branch']}/reset_crossover.sh"
    sha256 = retry_util(lambda: sha256_util(url))
    update_util(
        "Formula/crossover-trial-reset", ver=release["version"], url=url, sha256=sha256
    )


def update_hydroxide() -> None:
    releases: list[dict[str, Any]] = retry_util(
        lambda: requests.get(
            "https://api.github.com/repos/MZWNET/actions/releases?per_page=100",
            headers=headers,
        ).json()
    )
    release: dict[str, Any] = {}
    for r in releases:
        if "hydroxide" in r["tag_name"]:
            release = r
            break
    if release == {}:
        raise ValueError("Failed to find the correct release for hydroxide.")
    version = release["tag_name"].replace("hydroxide-", "").replace("v", "")
    url = f"https://github.com/MZWNET/actions/releases/download/hydroxide-v{version}/hydroxide-v{version}-macos-arm64.zip"
    sha256 = retry_util(lambda: github_sha256_util(release, url))
    update_util("Formula/hydroxide", ver=version, url=url, sha256=sha256)


def update_samloader_rs() -> None:
    release: dict[str, Any] = retry_util(
        lambda: requests.get(
            "https://api.github.com/repos/topjohnwu/samloader-rs/releases/latest",
            headers=headers,
        ).json()
    )
    url = f"https://github.com/topjohnwu/samloader-rs/releases/download/{release['tag_name']}/samloader-v{release['tag_name']}-macos-universal.tar.xz"
    sha256 = retry_util(lambda: github_sha256_util(release, url))
    update_util("Formula/samloader-rs", ver=release["tag_name"], url=url, sha256=sha256)


def update_cloudflarespeedtest() -> None:
    release: dict[str, Any] = retry_util(
        lambda: requests.get(
            "https://api.github.com/repos/XIU2/CloudflareSpeedTest/releases/latest",
            headers=headers,
        ).json()
    )
    version = release["tag_name"].replace("v", "")
    url = f"https://github.com/XIU2/CloudflareSpeedTest/releases/download/v{version}/cfst_darwin_arm64.zip"
    sha256 = retry_util(lambda: github_sha256_util(release, url))
    update_util("Formula/cloudflarespeedtest", ver=version, url=url, sha256=sha256)


# Casks
def update_bifrost() -> None:
    release: dict[str, Any] = retry_util(
        lambda: requests.get(
            "https://api.github.com/repos/zacharee/SamloaderKotlin/releases/latest"
        ).json()
    )
    url = f"https://github.com/zacharee/SamloaderKotlin/releases/download/{release['tag_name']}/bifrost-{release['tag_name']}-mac-aarch64.zip"
    sha256 = retry_util(lambda: github_sha256_util(release, url))
    update_util("Casks/bifrost", ver=release["tag_name"], url=url, sha256=sha256)


def update_bewlycat() -> None:
    releases: list[dict[str, Any]] = retry_util(
        lambda: requests.get(
            "https://api.github.com/repos/MZWNET/actions/releases?per_page=100",
            headers=headers,
        ).json()
    )
    release: dict[str, Any] = {}
    for r in releases:
        if "bewlycat-" in r["tag_name"]:
            release = r
            break
    if release == {}:
        raise ValueError("Failed to find the correct release for BewlyCat.")
    version = release["tag_name"].replace("bewlycat-v", "")
    url = f"https://github.com/MZWNET/actions/releases/download/bewlycat-v{version}/BewlyCat-v{version}.dmg"
    sha256 = retry_util(lambda: github_sha256_util(release, url))
    update_util("Casks/bewlycat", ver=version, url=url, sha256=sha256)


def update_xmcl() -> None:
    release: dict[str, Any] = retry_util(
        lambda: requests.get(
            "https://api.github.com/repos/Voxelum/x-minecraft-launcher/releases/latest"
        ).json()
    )
    version = release["tag_name"].replace("v", "")
    url = f"https://github.com/Voxelum/x-minecraft-launcher/releases/download/v{version}/xmcl-{version}-arm64.dmg"
    sha256 = retry_util(lambda: github_sha256_util(release, url))
    update_util("Casks/xmcl", ver=version, url=url, sha256=sha256)


def update_piliplus() -> None:
    release: dict[str, Any] = retry_util(
        lambda: requests.get(
            "https://api.github.com/repos/bggRGjQaUbCoE/PiliPlus/releases/latest"
        ).json()
    )
    version: str = ""
    url: str = ""
    for asset in release["assets"]:
        if asset["name"].endswith(".dmg") and "macos" in asset["name"]:
            version = (
                asset["name"]
                .replace("PiliPlus_macos_", "")
                .replace(".dmg", "")
                .replace("+", ",")
            )
            url = asset["browser_download_url"]
            break
    if version == "" or url == "":
        raise ValueError("Failed to find the correct asset for PiliPlus.")
    sha256 = retry_util(lambda: github_sha256_util(release, url))
    update_util("Casks/piliplus", ver=version, url=url, sha256=sha256)


def update_astrbot_desktop() -> None:
    release: dict[str, Any] = retry_util(
        lambda: requests.get(
            "https://api.github.com/repos/AstrBotDevs/AstrBot-desktop/releases/latest"
        ).json()
    )
    version = release["tag_name"].replace("v", "")
    url = f"https://github.com/AstrBotDevs/AstrBot-desktop/releases/download/v{version}/AstrBot_{version}_macos_arm64.app.tar.gz"
    sha256 = retry_util(lambda: github_sha256_util(release, url))
    update_util("Casks/astrbot-desktop", ver=version, url=url, sha256=sha256)


def update_bakamusic() -> None:
    release: dict[str, Any] = retry_util(
        lambda: requests.get(
            "https://api.github.com/repos/Zencok/BakaMusic/releases/latest"
        ).json()
    )
    version = release["tag_name"].replace("v", "")
    url = f"https://github.com/Zencok/BakaMusic/releases/download/v{version}/BakaMusic-{version}-darwin-arm64.dmg"
    sha256 = retry_util(lambda: github_sha256_util(release, url))
    update_util("Casks/bakamusic", ver=version, url=url, sha256=sha256)


def update_kelivo() -> None:
    release: dict[str, Any] = retry_util(
        lambda: requests.get(
            "https://api.github.com/repos/Chevey339/kelivo/releases/latest"
        ).json()
    )
    version: str = ""
    url: str = ""
    for asset in release["assets"]:
        if asset["name"].endswith(".dmg") and "macos" in asset["name"]:
            version = (
                asset["name"]
                .replace("Kelivo_macos_", "")
                .replace(".dmg", "")
                .replace("+", ",")
            )
            url = asset["browser_download_url"]
            break
    if version == "" or url == "":
        raise ValueError("Failed to find the correct asset for Kelivo.")
    sha256 = retry_util(lambda: github_sha256_util(release, url))
    update_util("Casks/kelivo", ver=version, url=url, sha256=sha256)


def update_websocket_reflector_x() -> None:
    release: dict[str, Any] = retry_util(
        lambda: requests.get(
            "https://api.github.com/repos/XDSEC/WebSocketReflectorX/releases/latest"
        ).json()
    )
    url = f"https://github.com/XDSEC/WebSocketReflectorX/releases/download/{release['tag_name']}/WebSocketReflectorX-{release['tag_name']}-macos-aarch64.dmg"
    sha256 = retry_util(lambda: github_sha256_util(release, url))
    update_util(
        "Casks/websocket-reflector-x", ver=release["tag_name"], url=url, sha256=sha256
    )


def update_memoh() -> None:
    release: dict[str, Any] = retry_util(
        lambda: requests.get(
            "https://api.github.com/repos/memohai/Memoh/releases?per_page=1",
            headers=headers,
        ).json()
    )[0]
    version = release["tag_name"].replace("v", "")
    url = f"https://github.com/memohai/Memoh/releases/download/v{version}/Memoh-{version}-mac-arm64.dmg"
    sha256 = retry_util(lambda: github_sha256_util(release, url))
    update_util("Casks/memoh", ver=version, url=url, sha256=sha256)


def update_codex_plus_plus() -> None:
    release: dict[str, Any] = retry_util(
        lambda: requests.get(
            "https://api.github.com/repos/BigPizzaV3/CodexPlusPlus/releases/latest"
        ).json()
    )
    version = release["tag_name"].replace("v", "")
    url = f"https://github.com/BigPizzaV3/CodexPlusPlus/releases/download/v{version}/CodexPlusPlus-{version}-macos-arm64.dmg"
    sha256 = retry_util(lambda: github_sha256_util(release, url))
    update_util("Casks/codex-plus-plus", ver=version, url=url, sha256=sha256)


if __name__ == "__main__":
    tasks = [
        update_stable_diffusion_cpp,
        update_hfd,
        update_sing_box,
        update_gryph,
        update_cliproxyapiplus,
        update_kiro_rs,
        update_manboster,
        update_crossover_trial_reset,
        update_hydroxide,
        update_samloader_rs,
        update_cloudflarespeedtest,
        update_bifrost,
        update_bewlycat,
        update_xmcl,
        update_piliplus,
        update_astrbot_desktop,
        update_bakamusic,
        update_kelivo,
        update_websocket_reflector_x,
        update_memoh,
        update_codex_plus_plus,
    ]
    with ThreadPoolExecutor() as executor:
        futures = [executor.submit(task) for task in tasks]
        for future in futures:
            future.result()
