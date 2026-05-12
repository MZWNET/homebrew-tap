cask "bewlycat" do
  version "1.6.4"
  sha256 "0c2391c43438e5708b9e7a6d2f7800075efb6a0fdea48f039fbc4289702964a3"

  url "https://github.com/MZWNET/actions/releases/download/bewlycat-v1.6.4/BewlyCat-v1.6.4.dmg"
  name "BewlyCat"
  desc "——基于BewlyBewly开发的Bilibili拓展"
  homepage "https://github.com/keleus/BewlyCat"

  app "BewlyCat.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "/Applications/BewlyCat.app"]
    system_command "/usr/bin/codesign", args: ["-fs", "-", "/Applications/BewlyCat.app"]
  end
end
