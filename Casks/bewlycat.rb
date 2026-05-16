cask "bewlycat" do
  version "1.6.5"
  sha256 "0918acfb12f84d4fc0b90291cdda9326d7f3b5f0f7da4a30482536c0bad08dcf"

  url "https://github.com/MZWNET/actions/releases/download/bewlycat-v1.6.5/BewlyCat-v1.6.5.dmg"
  name "BewlyCat"
  desc "——基于BewlyBewly开发的Bilibili拓展"
  homepage "https://github.com/keleus/BewlyCat"

  app "BewlyCat.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "/Applications/BewlyCat.app"]
    system_command "/usr/bin/codesign", args: ["-fs", "-", "/Applications/BewlyCat.app"]
  end
end
