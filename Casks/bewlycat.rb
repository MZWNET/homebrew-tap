cask "bewlycat" do
  version "1.7.5"
  sha256 "9ef3f5ddb2508faa3c8329e2529219f6cce32bb1f5164f39ab05c42868773a5f"

  url "https://github.com/MZWNET/actions/releases/download/bewlycat-v1.7.5/BewlyCat-v1.7.5.dmg"
  name "BewlyCat"
  desc "——基于BewlyBewly开发的Bilibili拓展"
  homepage "https://github.com/keleus/BewlyCat"

  app "BewlyCat.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "/Applications/BewlyCat.app"]
    system_command "/usr/bin/codesign", args: ["-fs", "-", "/Applications/BewlyCat.app"]
  end
end
