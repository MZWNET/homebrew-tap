cask "bewlycat" do
  version "1.6.1"
  sha256 "92d1b8083f3c1b913476310e4b6821723b6b59dded14040a3c423d95be02fa06"

  url "https://github.com/MZWNET/actions/releases/download/bewlycat-v1.6.1/BewlyCat-v1.6.1.dmg"
  name "BewlyCat"
  desc "——基于BewlyBewly开发的Bilibili拓展"
  homepage "https://github.com/keleus/BewlyCat"

  app "BewlyCat.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "/Applications/BewlyCat.app"]
    system_command "/usr/bin/codesign", args: ["-fs", "-", "/Applications/BewlyCat.app"]
  end
end
