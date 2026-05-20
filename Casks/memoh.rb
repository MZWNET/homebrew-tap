cask "memoh" do
  version "0.9.1"
  sha256 "cb6bcb54ba6d5ba2cfad5a48e0a1e666ec885b8ea6a93ed3ab1457e4d7313437"

  url "https://github.com/memohai/Memoh/releases/download/v0.9.1/Memoh-Desktop-0.9.1-mac-arm64.dmg",
      verified: "github.com/memohai/Memoh/"
  name "Memoh"
  desc "Self hosted, always-on AI agent platform run in containers"
  homepage "https://memoh.ai/"

  app "Memoh.app"
end
