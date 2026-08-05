cask "bewlycat" do
  version "1.7.4"
  sha256 "0a482ee2f2cb7216238b766100db5e72d2118b46cf708e3713383e59da62fe63"

  url "https://github.com/MZWNET/actions/releases/download/bewlycat-v1.7.4/BewlyCat-v1.7.4.dmg"
  name "BewlyCat"
  desc "——基于BewlyBewly开发的Bilibili拓展"
  homepage "https://github.com/keleus/BewlyCat"

  app "BewlyCat.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "/Applications/BewlyCat.app"]
    system_command "/usr/bin/codesign", args: ["-fs", "-", "/Applications/BewlyCat.app"]
  end
end
