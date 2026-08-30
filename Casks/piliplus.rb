cask "piliplus" do
  version "2.1.2,5281"
  sha256 "58bca1a6dfb9f492774584a86dfbcd90a40a24c6064c9eb441055e3f71e503d4"

  url "https://github.com/bggRGjQaUbCoE/PiliPlus/releases/download/2.1.2.3/PiliPlus_macos_2.1.2%2B5281.dmg",
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
