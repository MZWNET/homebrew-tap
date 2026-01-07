from pathlib import Path
import time
import re
import hashlib
import requests
import subprocess

def update_util(name, **kwargs):
    with open(Path("templates") / (name + ".rb"), "r") as file:
        content = file.read()
    for key, value in kwargs.items():
        content = content.replace("#{{" + key + "}}", value)
    with open(name + ".rb", "w") as file:
        file.write(content)

def retry_util(func):
    for _ in range(3):
        try:
            return func()
        except Exception:
            time.sleep(5)
    raise RuntimeError("Reached maximum number of retries")

def acquire_util(name, key):
    with open(name + ".rb", "r") as file:
        content = file.read()
    result = re.search(rf'{key}\s+"(.*)"', content)
    if result:
        return result.groups()[0]
    else:
        return None

def sha256_util(url):
    sha256_hash = hashlib.sha256()
    try:
        with requests.get(url, stream=True) as r:
            r.raise_for_status()
            for chunk in r.iter_content(chunk_size=4096):
                sha256_hash.update(chunk)
    except requests.exceptions.RequestException:
        raise RuntimeError("Connection error while downloading")
    return sha256_hash.hexdigest()

def git_util(url, name):
    try:
        subprocess.run(["git", "clone", url, name, "--depth", "1"], check=True)
        ver = subprocess.check_output(["git", "rev-parse", "--short=7", "HEAD"], cwd=name, text=True).strip()
        rev = subprocess.check_output(["git", "rev-parse", "HEAD"], cwd=name, text=True).strip()
        subprocess.run(["rm", "-rf", name], check=True)
        return { "version": ver, "revision": rev }
    except subprocess.CalledProcessError as e:
        raise RuntimeError(f"Clone failed: {e}")
