cask "bewlycat" do
  version "1.8.1"
  sha256 "874e18ff5e7412ce28ae78d6256e0aa1ac8c9d16e510de2b6b677462fbb6dc8a"

  url "https://github.com/MZWNET/actions/releases/download/bewlycat-v#{version}/BewlyCat-v#{version}.dmg"
  name "BewlyCat"
  desc "——基于BewlyBewly开发的Bilibili拓展"
  homepage "https://github.com/keleus/BewlyCat"

  app "BewlyCat.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/BewlyCat.app"]
  end
end
