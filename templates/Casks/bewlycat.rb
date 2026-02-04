cask "bewlycat" do
    name "BewlyCat"
    desc "BewlyCat——基于BewlyBewly开发的Bilibili拓展"
    homepage "https://github.com/keleus/BewlyCat"

    version "#{{ver}}"
    url "#{{url}}"
    sha256 "#{{sha256}}"

    app "BewlyCat.app"

    postflight do
        system_command "/usr/bin/xattr", args: ["-cr", "/Applications/BewlyCat.app"]
        system_command "/usr/bin/codesign", args: ["-fs", "-", "/Applications/BewlyCat.app"]
    end
end