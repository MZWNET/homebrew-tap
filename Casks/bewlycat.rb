cask "bewlycat" do
  version "1.8.0"
  sha256 "cafc4ff9cbe69c7ff005d22ba0d5172c2fa7443586ea8cb7a3dd319ecf998213"

  url "https://github.com/MZWNET/actions/releases/download/bewlycat-v#{version}/BewlyCat-v#{version}.dmg"
  name "BewlyCat"
  desc "——基于BewlyBewly开发的Bilibili拓展"
  homepage "https://github.com/keleus/BewlyCat"

  app "BewlyCat.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/BewlyCat.app"]
  end
end
