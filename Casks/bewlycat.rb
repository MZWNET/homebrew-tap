cask "bewlycat" do
  version "1.6.7"
  sha256 "c271764678f29b90c21307ba400837072af575e0d1f13df6fed5bc1107b136df"

  url "https://github.com/MZWNET/actions/releases/download/bewlycat-v1.6.7/BewlyCat-v1.6.7.dmg"
  name "BewlyCat"
  desc "——基于BewlyBewly开发的Bilibili拓展"
  homepage "https://github.com/keleus/BewlyCat"

  app "BewlyCat.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "/Applications/BewlyCat.app"]
    system_command "/usr/bin/codesign", args: ["-fs", "-", "/Applications/BewlyCat.app"]
  end
end
