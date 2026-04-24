import requests
import os
from typing import Any
from concurrent.futures import ThreadPoolExecutor
from util import (
    update_util,
    retry_util,
    acquire_util,
    sha256_util,
    github_sha256_util,
    git_util,
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
    url = f"https://github.com/MZWNET/actions/releases/download/{release["tag_name"]}/{release["tag_name"]}-bin-macos-metal-arm64.zip"
    sha256 = retry_util(lambda: github_sha256_util(release, url))
    update_util("Formula/stable-diffusion.cpp", ver=version, url=url, sha256=sha256)


def update_hfd() -> None:
    release: dict[str, str] = retry_util(
        lambda: git_util(acquire_util("Formula/hfd", "head"), "hfd")
    )
    url = f"{acquire_util("Formula/hfd", "homepage")}/raw/{release["revision"]}/hfd.sh"
    sha256 = retry_util(lambda: sha256_util(url))
    update_util("Formula/hfd", ver=release["version"], url=url, sha256=sha256)


def update_sing_box_latest() -> None:
    release: dict[str, Any] = retry_util(
        lambda: requests.get(
            "https://api.github.com/repos/SagerNet/sing-box/releases?per_page=1",
            headers=headers,
        ).json()
    )[0]
    version = release["tag_name"].replace("v", "")
    url = f"https://github.com/SagerNet/sing-box/releases/download/v{version}/sing-box-{version}-darwin-arm64.tar.gz"
    sha256 = retry_util(lambda: github_sha256_util(release, url))
    update_util("Formula/sing-box-latest", ver=version, url=url, sha256=sha256)


# Casks
def update_sfm_latest() -> None:
    release: dict[str, Any] = retry_util(
        lambda: requests.get(
            "https://api.github.com/repos/SagerNet/sing-box/releases?per_page=1",
            headers=headers,
        ).json()
    )[0]
    version = release["tag_name"].replace("v", "")
    url = f"https://github.com/SagerNet/sing-box/releases/download/v{version}/SFM-{version}-Apple.pkg"
    sha256 = retry_util(lambda: github_sha256_util(release, url))
    update_util("Casks/sfm-latest", ver=version, url=url, sha256=sha256)


def update_bifrost() -> None:
    release: dict[str, Any] = retry_util(
        lambda: requests.get(
            "https://api.github.com/repos/zacharee/SamloaderKotlin/releases/latest"
        ).json()
    )
    url = f"https://github.com/zacharee/SamloaderKotlin/releases/download/{release["tag_name"]}/bifrost-{release["tag_name"]}-mac-aarch64.zip"
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
    url = f"https://github.com/XDSEC/WebSocketReflectorX/releases/download/{release["tag_name"]}/WebSocketReflectorX-{release["tag_name"]}-macos-aarch64.dmg"
    sha256 = retry_util(lambda: github_sha256_util(release, url))
    update_util("Casks/websocket-reflector-x", ver=release["tag_name"], url=url, sha256=sha256)


if __name__ == "__main__":
    tasks = [
        update_stable_diffusion_cpp,
        update_hfd,
        update_sing_box_latest,
        update_sfm_latest,
        update_bifrost,
        update_bewlycat,
        update_xmcl,
        update_piliplus,
        update_astrbot_desktop,
        update_bakamusic,
        update_kelivo,
        update_websocket_reflector_x,
    ]
    with ThreadPoolExecutor() as executor:
        futures = [executor.submit(task) for task in tasks]
        for future in futures:
            future.result()
