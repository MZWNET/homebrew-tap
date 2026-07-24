cask "bewlycat" do
  version "1.6.9"
  sha256 "0a3d9638fe1f7a05277003e4502dbe4015cf84af4f15076d63c59fa65ed30cfb"

  url "https://github.com/MZWNET/actions/releases/download/bewlycat-v1.6.9/BewlyCat-v1.6.9.dmg"
  name "BewlyCat"
  desc "——基于BewlyBewly开发的Bilibili拓展"
  homepage "https://github.com/keleus/BewlyCat"

  app "BewlyCat.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "/Applications/BewlyCat.app"]
    system_command "/usr/bin/codesign", args: ["-fs", "-", "/Applications/BewlyCat.app"]
  end
end
