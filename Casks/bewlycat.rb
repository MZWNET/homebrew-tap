cask "bewlycat" do
    name "BewlyCat"
    desc "BewlyCat——基于BewlyBewly开发的Bilibili拓展"
    homepage "https://github.com/keleus/BewlyCat"

    version "1.5.7"
    url "https://github.com/MZWNET/actions/releases/download/bewlycat-v1.5.7/BewlyCat-v1.5.7.dmg"
    sha256 "0133cfac5ba8e8eb8d183432b61e4d591003f4f587f5d129b6e0857cff89e773"

    app "BewlyCat.app"

    postflight do
        system_command "/usr/bin/xattr", args: ["-cr", "/Applications/BewlyCat.app"]
        system_command "/usr/bin/codesign", args: ["-fs", "-", "/Applications/BewlyCat.app"]
    end
end