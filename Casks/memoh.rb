cask "memoh" do
  version "0.16.0"
  sha256 "b31a8b1fcf6bb4263b38b7dd1ed0ad425cccfa0c79f24590ad460a32f58a06a8"

  url "https://github.com/memohai/Memoh/releases/download/v0.16.0/Memoh-0.16.0-mac-arm64.dmg",
      verified: "github.com/memohai/Memoh/"
  name "Memoh"
  desc "Self hosted, always-on AI agent platform run in containers"
  homepage "https://memoh.ai/"

  app "Memoh.app"
end
