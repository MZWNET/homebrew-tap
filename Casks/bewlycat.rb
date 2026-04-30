cask "bewlycat" do
  version "1.6.3"
  sha256 "410323b5e96302f86a190160781642a29ab999f2435c8f521bbaf01530b5b293"

  url "https://github.com/MZWNET/actions/releases/download/bewlycat-v1.6.3/BewlyCat-v1.6.3.dmg"
  name "BewlyCat"
  desc "——基于BewlyBewly开发的Bilibili拓展"
  homepage "https://github.com/keleus/BewlyCat"

  app "BewlyCat.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "/Applications/BewlyCat.app"]
    system_command "/usr/bin/codesign", args: ["-fs", "-", "/Applications/BewlyCat.app"]
  end
end
