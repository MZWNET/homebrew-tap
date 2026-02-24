cask "bewlycat" do
    name "BewlyCat"
    desc "BewlyCat——基于BewlyBewly开发的Bilibili拓展"
    homepage "https://github.com/keleus/BewlyCat"

    version "1.5.8"
    url "https://github.com/MZWNET/actions/releases/download/bewlycat-v1.5.8/BewlyCat-v1.5.8.dmg"
    sha256 "4839b0753fcab0449b3a16c49167ebad17a3f6dc0667af464f1e25de39540eb2"

    app "BewlyCat.app"

    postflight do
        system_command "/usr/bin/xattr", args: ["-cr", "/Applications/BewlyCat.app"]
        system_command "/usr/bin/codesign", args: ["-fs", "-", "/Applications/BewlyCat.app"]
    end
end