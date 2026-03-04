cask "piliplus" do
  version "2.0.0,4721"
  sha256 "2698dd8468c12ca1447aa5fba69375b277262c4e60a37c91f14230b1f0761d4b"

  url "https://github.com/bggRGjQaUbCoE/PiliPlus/releases/download/2.0.0.1/PiliPlus_macos_2.0.0%2B4721.dmg",
      verified: "github.com/bggRGjQaUbCoE/PiliPlus/"
  name "PiliPlus"
  desc "Third-party BiliBili client developed with Flutter"
  homepage "https://github.com/bggRGjQaUbCoE/PiliPlus"

  app "PiliPlus.app"
end
