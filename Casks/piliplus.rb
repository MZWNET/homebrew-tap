cask "piliplus" do
  version "2.0.6,4915"
  sha256 "c31a1351c16746ba7226b2c70eb4f1fb532e546ebe82a9e48be7dd0716019b02"

  url "https://github.com/bggRGjQaUbCoE/PiliPlus/releases/download/2.0.6/PiliPlus_macos_2.0.6%2B4915.dmg",
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
