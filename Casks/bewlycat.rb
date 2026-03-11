cask "bewlycat" do
  version "1.6.0"
  sha256 "58ea612585af98391ce7fc68a128dff41e01bb954aad5ee3079e2785faa7ae86"

  url "https://github.com/MZWNET/actions/releases/download/bewlycat-v1.6.0/BewlyCat-v1.6.0.dmg"
  name "BewlyCat"
  desc "——基于BewlyBewly开发的Bilibili拓展"
  homepage "https://github.com/keleus/BewlyCat"

  app "BewlyCat.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "/Applications/BewlyCat.app"]
    system_command "/usr/bin/codesign", args: ["-fs", "-", "/Applications/BewlyCat.app"]
  end
end
