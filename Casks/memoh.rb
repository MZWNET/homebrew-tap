cask "memoh" do
  version "0.10.0"
  sha256 "9d9758fff1e4d880e22aa0ef8020ad3b9b65994ab7792fa086cca90e37408e10"

  url "https://github.com/memohai/Memoh/releases/download/v0.10.0/Memoh-0.10.0-mac-arm64.dmg",
      verified: "github.com/memohai/Memoh/"
  name "Memoh"
  desc "Self hosted, always-on AI agent platform run in containers"
  homepage "https://memoh.ai/"

  app "Memoh.app"
end
