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
version = data["tag_name"][-7:]
if version != acquire_util("Formula/stable-diffusion.cpp", "version"):
    url = f"https://github.com/MZWNET/actions/releases/download/sd-master-{version}/sd-master-{version}-bin-macos-metal-arm64.zip"
    sha256 = retry_util(lambda: sha256_util(url))
    update_util("Formula/stable-diffusion.cpp", ver=version, url=url, sha256=sha256)

# hfd
data = retry_util(lambda: git_util(acquire_util("Formula/hfd", "head"), "hfd"))
if data["version"] != acquire_util("Formula/hfd", "version"):
    url = acquire_util("Formula/hfd", "homepage") + f"/raw/{data['revision']}/hfd.sh"
    sha256 = retry_util(lambda: sha256_util(url))
    update_util("Formula/hfd", ver=data["version"], url=url, sha256=sha256)
