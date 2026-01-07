import requests
from util import update_util, retry_util, acquire_util, sha256_util

# stable-diffusion.cpp
data = retry_util(lambda: requests.get("https://api.github.com/repos/leejet/stable-diffusion.cpp/releases/latest").json())
if True:
    version = data["tag_name"]
    if version != acquire_util("Formula/stable-diffusion.cpp", "version"):
        url = ""
        for asset in data["assets"]:
            if "macOS" in asset["name"]:
                url = asset["browser_download_url"]
                break
        sha256 = retry_util(lambda: sha256_util(url))
        update_util("Formula/stable-diffusion.cpp", ver=version, url=url, sha256=sha256)
