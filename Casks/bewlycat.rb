cask "bewlycat" do
  version "1.8.2"
  sha256 "e177853d726343bc2bbe6601675bb90470d8ec31618e3cce2efd95bb7ac2ec82"

  url "https://github.com/MZWNET/actions/releases/download/bewlycat-v#{version}/BewlyCat-v#{version}.dmg"
  name "BewlyCat"
  desc "——基于BewlyBewly开发的Bilibili拓展"
  homepage "https://github.com/keleus/BewlyCat"

  app "BewlyCat.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/BewlyCat.app"]
  end
end
