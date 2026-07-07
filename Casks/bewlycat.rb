cask "bewlycat" do
  version "1.6.8"
  sha256 "416e6465dadd2e572438f76bcabdeb764b12dd1d9544fdf78e6c231d794690a2"

  url "https://github.com/MZWNET/actions/releases/download/bewlycat-v1.6.8/BewlyCat-v1.6.8.dmg"
  name "BewlyCat"
  desc "——基于BewlyBewly开发的Bilibili拓展"
  homepage "https://github.com/keleus/BewlyCat"

  app "BewlyCat.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "/Applications/BewlyCat.app"]
    system_command "/usr/bin/codesign", args: ["-fs", "-", "/Applications/BewlyCat.app"]
  end
end
