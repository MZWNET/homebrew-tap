import requests
import os
from typing import Any
from util import update_util, retry_util, acquire_util, sha256_util, git_util

token: str | None = os.environ.get("GITHUB_TOKEN")
headers: dict[str, str] = {"Authorization": f"Bearer {token}"} if token else {}

# stable-diffusion.cpp
sd_releases: list[dict[str, Any]] = retry_util(
    lambda: requests.get(
        "https://api.github.com/repos/MZWNET/actions/releases?per_page=100",
        headers=headers,
    ).json()
)
sd_release: dict[str, Any] = {}
for release in sd_releases:
    if "sd-master" in release["tag_name"]:
        sd_release = release
        break
version: str = sd_release["tag_name"].replace("sd-master-", "0.0.").replace("-", "_")
if version != acquire_util("Formula/stable-diffusion.cpp", "version"):
    url: str = (
        f"https://github.com/MZWNET/actions/releases/download/{sd_release['tag_name']}/{sd_release['tag_name']}-bin-macos-metal-arm64.zip"
    )
    sha256: str = retry_util(lambda: sha256_util(url))
    update_util("Formula/stable-diffusion.cpp", ver=version, url=url, sha256=sha256)

# hfd
hfd_data: dict[str, str] = retry_util(
    lambda: git_util(acquire_util("Formula/hfd", "head"), "hfd")
)
if hfd_data["version"] != acquire_util("Formula/hfd", "version"):
    url = (
        acquire_util("Formula/hfd", "homepage") + f"/raw/{hfd_data['revision']}/hfd.sh"
    )
    sha256: str = retry_util(lambda: sha256_util(url))
    update_util("Formula/hfd", ver=hfd_data["version"], url=url, sha256=sha256)

# sing-box-latest
singbox_release: dict[str, Any] = retry_util(
    lambda: requests.get(
        "https://api.github.com/repos/SagerNet/sing-box/releases?per_page=1",
        headers=headers,
    ).json()
)[0]
version = singbox_release["tag_name"].replace("v", "")
if version != acquire_util("Formula/sing-box-latest", "version"):
    url: str = (
        f"https://github.com/SagerNet/sing-box/releases/download/v{version}/sing-box-{version}-darwin-arm64.tar.gz"
    )
    sha256: str = retry_util(lambda: sha256_util(url))
    update_util("Formula/sing-box-latest", ver=version, url=url, sha256=sha256)

# SFM-latest
sfm_release: dict[str, Any] = retry_util(
    lambda: requests.get(
        "https://api.github.com/repos/SagerNet/sing-box/releases?per_page=1",
        headers=headers,
    ).json()
)[0]
version = sfm_release["tag_name"].replace("v", "")
if version != acquire_util("Casks/sfm-latest", "version"):
    url: str = (
        f"https://github.com/SagerNet/sing-box/releases/download/v{version}/SFM-{version}-Apple.pkg"
    )
    sha256: str = retry_util(lambda: sha256_util(url))
    update_util("Casks/sfm-latest", ver=version, url=url, sha256=sha256)
