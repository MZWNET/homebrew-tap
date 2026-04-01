cask "piliplus" do
  version "2.0.2,4814"
  sha256 "8cd4f66315f974bf3c05e6287c7fb224b3b4080f4f8220b49a9859dbcf9a5678"

  url "https://github.com/bggRGjQaUbCoE/PiliPlus/releases/download/2.0.2/PiliPlus_macos_2.0.2%2B4814.dmg",
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
