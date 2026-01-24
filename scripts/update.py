import requests
import os
from util import update_util, retry_util, acquire_util, sha256_util, git_util

token = os.environ.get("GITHUB_TOKEN")
headers = {"Authorization": f"Bearer {token}"} if token else {}

# stable-diffusion.cpp
data = retry_util(lambda: requests.get("https://api.github.com/repos/MZWNET/actions/releases?per_page=100", headers=headers).json())
for release in data:
    if "sd-master" in release["tag_name"]:
        data = release
        break
version = data["tag_name"].replace("sd-master-", "0.0.").replace("-", "_")
if version != acquire_util("Formula/stable-diffusion.cpp", "version"):
    url = f"https://github.com/MZWNET/actions/releases/download/{data["tag_name"]}/{data["tag_name"]}-bin-macos-metal-arm64.zip"
    sha256 = retry_util(lambda: sha256_util(url))
    update_util("Formula/stable-diffusion.cpp", ver=version, url=url, sha256=sha256)

# hfd
data = retry_util(lambda: git_util(acquire_util("Formula/hfd", "head"), "hfd"))
if data["version"] != acquire_util("Formula/hfd", "version"):
    url = acquire_util("Formula/hfd", "homepage") + f"/raw/{data['revision']}/hfd.sh"
    sha256 = retry_util(lambda: sha256_util(url))
    update_util("Formula/hfd", ver=data["version"], url=url, sha256=sha256)

# sing-box-latest
data = retry_util(lambda: requests.get("https://api.github.com/repos/SagerNet/sing-box/releases?per_page=1", headers=headers).json())[0]
version = data["tag_name"].replace("v", "")
if version != acquire_util("Formula/sing-box-latest", "version"):
    url = f"https://github.com/SagerNet/sing-box/releases/download/v{version}/sing-box-{version}-darwin-arm64.tar.gz"
    sha256 = retry_util(lambda: sha256_util(url))
    update_util("Formula/sing-box-latest", ver=version, url=url, sha256=sha256)

# SFM-latest
data = retry_util(lambda: requests.get("https://api.github.com/repos/SagerNet/sing-box/releases?per_page=1", headers=headers).json())[0]
version = data["tag_name"].replace("v", "")
if version != acquire_util("Casks/sfm-latest", "version"):
    url = f"https://github.com/SagerNet/sing-box/releases/download/v{version}/SFM-{version}-Apple.pkg"
    sha256 = retry_util(lambda: sha256_util(url))
    update_util("Casks/sfm-latest", ver=version, url=url, sha256=sha256)
