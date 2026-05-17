cask "memoh" do
  version "0.9.0"
  sha256 "3f770837cc5d83d3af2fa026813c3d29101bd39887f51148c49a2a23785dd9de"

  url "https://github.com/memohai/Memoh/releases/download/v0.9.0/Memoh-Desktop-0.9.0-mac-arm64.dmg",
      verified: "github.com/memohai/Memoh/"
  name "Memoh"
  desc "Self hosted, always-on AI agent platform run in containers"
  homepage "https://memoh.ai/"

  app "Memoh.app"
end
