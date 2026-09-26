cask "bewlycat" do
  version "1.8.0"
  sha256 "3bad2361de2ca7b41cafc97e9f73d82b3f24e099db133ab3b086a3d4527aa5a4"

  url "https://github.com/MZWNET/actions/releases/download/bewlycat-v1.8.0/BewlyCat-v1.8.0.dmg"
  name "BewlyCat"
  desc "——基于BewlyBewly开发的Bilibili拓展"
  homepage "https://github.com/keleus/BewlyCat"

  app "BewlyCat.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/BewlyCat.app"]
    run "/usr/bin/codesign", args: ["-fs", "-", "{{appdir}}/BewlyCat.app"]
  end
end
