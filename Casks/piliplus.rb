cask "piliplus" do
  version "2.1.2,5241"
  sha256 "4dd9e0cd939bbf359afe34b1c7e0e0362cdc20de88d71261ecfc2e13aef7ad84"

  url "https://github.com/bggRGjQaUbCoE/PiliPlus/releases/download/2.1.2/PiliPlus_macos_2.1.2%2B5241.dmg",
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
