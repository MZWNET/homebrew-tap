cask "bewlycat" do
  version "1.6.6"
  sha256 "4aa9b26f571366b9572a8d7d1530c5a0f62052a12c90c0389365363cd04e37bc"

  url "https://github.com/MZWNET/actions/releases/download/bewlycat-v1.6.6/BewlyCat-v1.6.6.dmg"
  name "BewlyCat"
  desc "——基于BewlyBewly开发的Bilibili拓展"
  homepage "https://github.com/keleus/BewlyCat"

  app "BewlyCat.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "/Applications/BewlyCat.app"]
    system_command "/usr/bin/codesign", args: ["-fs", "-", "/Applications/BewlyCat.app"]
  end
end
