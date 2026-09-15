cask "bewlycat" do
  version "1.7.9"
  sha256 "fff379546c59dee28b3916f5ea4189eda870ea56db8fc38a2f791a469d219dfb"

  url "https://github.com/MZWNET/actions/releases/download/bewlycat-v1.7.9/BewlyCat-v1.7.9.dmg"
  name "BewlyCat"
  desc "——基于BewlyBewly开发的Bilibili拓展"
  homepage "https://github.com/keleus/BewlyCat"

  app "BewlyCat.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/BewlyCat.app"]
    run "/usr/bin/codesign", args: ["-fs", "-", "{{appdir}}/BewlyCat.app"]
  end
end
