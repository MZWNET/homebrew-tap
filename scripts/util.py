from pathlib import Path
import time
import re
import hashlib
import requests
import subprocess
import shutil
from typing import Callable, TypeVar

T = TypeVar("T")


def update_util(name: str, **kwargs: str) -> None:
    with open(Path("templates") / (name + ".rb"), "r") as file:
        content: str = file.read()
    for key, value in kwargs.items():
        content = content.replace("#{{" + key + "}}", value)
    with open(name + ".rb", "w") as file:
        file.write(content)


def retry_util(func: Callable[[], T]) -> T:
    for _ in range(3):
        try:
            return func()
        except Exception:
            time.sleep(5)
    raise RuntimeError("Reached maximum number of retries")


def acquire_util(name: str, key: str) -> str:
    if not Path(name + ".rb").exists():
        return ""
    with open(name + ".rb", "r") as file:
        content: str = file.read()
    result: re.Match[str] | None = re.search(rf'{key}\s+"(.*)"', content)
    if result:
        return result.groups()[0]
    else:
        return ""


def sha256_util(url: str) -> str:
    sha256_hash = hashlib.sha256()
    try:
        with requests.get(url, stream=True) as r:
            r.raise_for_status()
            for chunk in r.iter_content(chunk_size=4096):
                sha256_hash.update(chunk)
    except requests.exceptions.RequestException:
        raise RuntimeError("Connection error while downloading")
    return sha256_hash.hexdigest()


def git_util(url: str, name: str) -> dict[str, str]:
    if Path(f"repo/{name}").exists():
        shutil.rmtree(f"repo/{name}")
    try:
        subprocess.run(["git", "clone", url, f"repo/{name}"], check=True)
        historyCount: str = subprocess.check_output(
            ["git", "rev-list", "--count", "HEAD"], cwd=f"repo/{name}", text=True
        ).strip()
        shortRev: str = subprocess.check_output(
            ["git", "rev-parse", "--short=7", "HEAD"], cwd=f"repo/{name}", text=True
        ).strip()
        ver: str = f"0.0.{historyCount}_{shortRev}"
        rev: str = subprocess.check_output(
            ["git", "rev-parse", "HEAD"], cwd=f"repo/{name}", text=True
        ).strip()
        return {"version": ver, "revision": rev}
    except subprocess.CalledProcessError as e:
        raise RuntimeError(f"Clone failed: {e}")
