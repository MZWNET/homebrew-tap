cask "bewlycat" do
  version "1.8.5"
  sha256 "fd5ec3b585e4b798ad32d2dfbce14331780a560d2710192c617cf2eea7e53880"

  url "https://github.com/MZWNET/actions/releases/download/bewlycat-v#{version}/BewlyCat-v#{version}.dmg"
  name "BewlyCat"
  desc "——基于BewlyBewly开发的Bilibili拓展"
  homepage "https://github.com/keleus/BewlyCat"

  app "BewlyCat.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/BewlyCat.app"]
  end
end
