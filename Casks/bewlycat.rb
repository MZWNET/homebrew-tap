cask "bewlycat" do
  version "1.7.6"
  sha256 "e61cd6a6e9c0c15dbc2dce742bc48af29c1879bf65fe1340c7d6d64b18ba26ec"

  url "https://github.com/MZWNET/actions/releases/download/bewlycat-v1.7.6/BewlyCat-v1.7.6.dmg"
  name "BewlyCat"
  desc "——基于BewlyBewly开发的Bilibili拓展"
  homepage "https://github.com/keleus/BewlyCat"

  app "BewlyCat.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "/Applications/BewlyCat.app"]
    system_command "/usr/bin/codesign", args: ["-fs", "-", "/Applications/BewlyCat.app"]
  end
end
