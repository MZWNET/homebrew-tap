cask "piliplus" do
  version "2.0.7,4956"
  sha256 "256ab2a9ee3c0ecd064ee0ee3b15b71657652b06c48a8c0377c5abfed3953711"

  url "https://github.com/bggRGjQaUbCoE/PiliPlus/releases/download/2.0.7.2/PiliPlus_macos_2.0.7%2B4956.dmg",
      verified: "github.com/bggRGjQaUbCoE/PiliPlus/"
  name "PiliPlus"
  desc "Third-party BiliBili client developed with Flutter"
  homepage "https://github.com/bggRGjQaUbCoE/PiliPlus"

  app "PiliPlus.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "/Applications/BewlyCat.app"]
    system_command "/usr/bin/codesign", args: ["-fs", "-", "/Applications/BewlyCat.app"]
  end
end
