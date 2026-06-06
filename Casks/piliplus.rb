cask "piliplus" do
  version "2.0.8,5024"
  sha256 "6d4d2bc7b0a1f2e08e48b42bdb5b2698bafc7584fb232f03bae2ebd2b75f4227"

  url "https://github.com/bggRGjQaUbCoE/PiliPlus/releases/download/2.0.8.1/PiliPlus_macos_2.0.8%2B5024.dmg",
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
