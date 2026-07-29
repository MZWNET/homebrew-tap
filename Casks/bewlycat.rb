cask "bewlycat" do
  version "1.7.0"
  sha256 "588991e55bae4f7345fa101ac6343db2718bd510ddcfe4dc8282d187534ef4ca"

  url "https://github.com/MZWNET/actions/releases/download/bewlycat-v1.7.0/BewlyCat-v1.7.0.dmg"
  name "BewlyCat"
  desc "——基于BewlyBewly开发的Bilibili拓展"
  homepage "https://github.com/keleus/BewlyCat"

  app "BewlyCat.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "/Applications/BewlyCat.app"]
    system_command "/usr/bin/codesign", args: ["-fs", "-", "/Applications/BewlyCat.app"]
  end
end
