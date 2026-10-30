cask "bewlycat" do
  version "1.8.3"
  sha256 "85ee13abeada9e9d1066b3ce26ed9ded48edfa6cce97eada93bb38dc5da10438"

  url "https://github.com/MZWNET/actions/releases/download/bewlycat-v#{version}/BewlyCat-v#{version}.dmg"
  name "BewlyCat"
  desc "——基于BewlyBewly开发的Bilibili拓展"
  homepage "https://github.com/keleus/BewlyCat"

  app "BewlyCat.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/BewlyCat.app"]
  end
end
