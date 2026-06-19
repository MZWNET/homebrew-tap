cask "memoh" do
  version "0.13.1"
  sha256 "031a3371b3cde8731fce6a2d693afdf7c999b22178e8f4e8e18e80dca53f2168"

  url "https://github.com/memohai/Memoh/releases/download/v0.13.1/Memoh-0.13.1-mac-arm64.dmg",
      verified: "github.com/memohai/Memoh/"
  name "Memoh"
  desc "Self hosted, always-on AI agent platform run in containers"
  homepage "https://memoh.ai/"

  app "Memoh.app"
end
