cask "bewlycat" do
  version "1.7.8"
  sha256 "d3bf0067b1bc1a0d00c8803aa798ce6fda4af24d50791741d7c6f36c479968be"

  url "https://github.com/MZWNET/actions/releases/download/bewlycat-v1.7.8/BewlyCat-v1.7.8.dmg"
  name "BewlyCat"
  desc "——基于BewlyBewly开发的Bilibili拓展"
  homepage "https://github.com/keleus/BewlyCat"

  app "BewlyCat.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "/Applications/BewlyCat.app"]
    system_command "/usr/bin/codesign", args: ["-fs", "-", "/Applications/BewlyCat.app"]
  end
end
