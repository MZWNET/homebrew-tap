cask "memoh" do
  version "0.10.0-alpha.1"
  sha256 "50fa7f4c2c03e145aba4476d5c4b5a31cba27e5737fb8352da2e85380e8e552c"

  url "https://github.com/memohai/Memoh/releases/download/v0.10.0-alpha.1/Memoh-Desktop-0.10.0-alpha.1-mac-arm64.dmg",
      verified: "github.com/memohai/Memoh/"
  name "Memoh"
  desc "Self hosted, always-on AI agent platform run in containers"
  homepage "https://memoh.ai/"

  app "Memoh.app"
end
