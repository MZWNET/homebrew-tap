cask "bewlycat" do
  version "1.6.2"
  sha256 "600d2df6a46d57fc7b6d8eb6de4b8cbd0b6669f76cca0ab2ef44e24959fd69f8"

  url "https://github.com/MZWNET/actions/releases/download/bewlycat-v1.6.2/BewlyCat-v1.6.2.dmg"
  name "BewlyCat"
  desc "——基于BewlyBewly开发的Bilibili拓展"
  homepage "https://github.com/keleus/BewlyCat"

  app "BewlyCat.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "/Applications/BewlyCat.app"]
    system_command "/usr/bin/codesign", args: ["-fs", "-", "/Applications/BewlyCat.app"]
  end
end
