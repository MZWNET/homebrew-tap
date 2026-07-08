cask "memoh" do
  version "0.15.0"
  sha256 "02e858513ca116d63960ea7c3055a7835f75c4d5db1205e469b8c380fa345deb"

  url "https://github.com/memohai/Memoh/releases/download/v0.15.0/Memoh-0.15.0-mac-arm64.dmg",
      verified: "github.com/memohai/Memoh/"
  name "Memoh"
  desc "Self hosted, always-on AI agent platform run in containers"
  homepage "https://memoh.ai/"

  app "Memoh.app"
end
