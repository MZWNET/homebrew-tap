import requests
from util import update_util, retry_util, acquire_util, sha256_util, git_util

# stable-diffusion.cpp
data = retry_util(lambda: requests.get("https://api.github.com/repos/leejet/stable-diffusion.cpp/releases/latest").json())
if data["tag_name"] != acquire_util("Formula/stable-diffusion.cpp", "version"):
    url = ""
    for asset in data["assets"]:
        if "macOS" in asset["name"]:
            url = asset["browser_download_url"]
            break
    sha256 = retry_util(lambda: sha256_util(url))
    update_util("Formula/stable-diffusion.cpp", ver=data["tag_name"], url=url, sha256=sha256)

# hfd
data = retry_util(lambda: git_util(acquire_util("Formula/hfd", "head"), "hfd"))
if data["version"] != acquire_util("Formula/hfd", "version"):
    url = acquire_util("Formula/hfd", "homepage") + f"/raw/{data['revision']}/hfd.sh"
    sha256 = retry_util(lambda: sha256_util(url))
    update_util("Formula/hfd", ver=data["version"], url=url, sha256=sha256)
