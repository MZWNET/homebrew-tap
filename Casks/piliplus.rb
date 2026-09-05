cask "piliplus" do
  version "2.1.3,5315"
  sha256 "afe1a986cc569ad2c4fce1b17b6d90bd573b412dacfdd3ab9efc1cc6720b0c29"

  url "https://github.com/bggRGjQaUbCoE/PiliPlus/releases/download/2.1.3.1/PiliPlus_macos_2.1.3%2B5315.dmg",
      verified: "github.com/bggRGjQaUbCoE/PiliPlus/"
  name "PiliPlus"
  desc "Third-party BiliBili client developed with Flutter"
  homepage "https://github.com/bggRGjQaUbCoE/PiliPlus"

  app "PiliPlus.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "/Applications/PiliPlus.app"]
    system_command "/usr/bin/codesign", args: ["-fs", "-", "/Applications/PiliPlus.app"]
  end
end
