import requests
import os
from typing import Any
from util import update_util, retry_util, acquire_util, sha256_util, git_util

token: str | None = os.environ.get("GITHUB_TOKEN")
headers: dict[str, str] = {"Authorization": f"Bearer {token}"} if token else {}


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
    version = release["tag_name"].replace("sd-master-", "0.0.").replace("-", "_")
    if version != acquire_util("Formula/stable-diffusion.cpp", "version"):
        url = f"https://github.com/MZWNET/actions/releases/download/{release["tag_name"]}/{release["tag_name"]}-bin-macos-metal-arm64.zip"
        sha256 = retry_util(lambda: sha256_util(url))
        update_util("Formula/stable-diffusion.cpp", ver=version, url=url, sha256=sha256)


def update_hfd() -> None:
    release: dict[str, str] = retry_util(
        lambda: git_util(acquire_util("Formula/hfd", "head"), "hfd")
    )
    if release["version"] != acquire_util("Formula/hfd", "version"):
        url = (
            acquire_util("Formula/hfd", "homepage")
            + f"/raw/{release["revision"]}/hfd.sh"
        )
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
    if version != acquire_util("Formula/sing-box-latest", "version"):
        url = f"https://github.com/SagerNet/sing-box/releases/download/v{version}/sing-box-{version}-darwin-arm64.tar.gz"
        sha256 = retry_util(lambda: sha256_util(url))
        update_util("Formula/sing-box-latest", ver=version, url=url, sha256=sha256)


def update_sfm_latest() -> None:
    release: dict[str, Any] = retry_util(
        lambda: requests.get(
            "https://api.github.com/repos/SagerNet/sing-box/releases?per_page=1",
            headers=headers,
        ).json()
    )[0]
    version = release["tag_name"].replace("v", "")
    if version != acquire_util("Casks/sfm-latest", "version"):
        url = f"https://github.com/SagerNet/sing-box/releases/download/v{version}/SFM-{version}-Apple.pkg"
        sha256 = retry_util(lambda: sha256_util(url))
        update_util("Casks/sfm-latest", ver=version, url=url, sha256=sha256)


def update_bifrost() -> None:
    release: dict[str, Any] = retry_util(
        lambda: requests.get(
            "https://api.github.com/repos/zacharee/SamloaderKotlin/releases/latest"
        ).json()
    )
    if release["tag_name"] != acquire_util("Casks/bifrost", "version"):
        url = f"https://github.com/zacharee/SamloaderKotlin/releases/download/{release["tag_name"]}/bifrost-{release["tag_name"]}-mac-aarch64.zip"
        sha256 = retry_util(lambda: sha256_util(url))
        update_util("Casks/bifrost", ver=release["tag_name"], url=url, sha256=sha256)


if __name__ == "__main__":
    update_stable_diffusion_cpp()
    update_hfd()
    update_sing_box_latest()
    update_sfm_latest()
    update_bifrost()
