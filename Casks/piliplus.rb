cask "piliplus" do
  version "2.0.7,4946"
  sha256 "3878861216394cc2ef72d8a029aca987ef83ff330c069dbaf8df7d7f3a7a4cca"

  url "https://github.com/bggRGjQaUbCoE/PiliPlus/releases/download/2.0.7.1/PiliPlus_macos_2.0.7%2B4946.dmg",
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
