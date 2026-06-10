cask "memoh" do
  version "0.12.0"
  sha256 "564c2d1ac54105492663f7b17357bae6cd86ed8a5783e9503769bb6347bdec7c"

  url "https://github.com/memohai/Memoh/releases/download/v0.12.0/Memoh-0.12.0-mac-arm64.dmg",
      verified: "github.com/memohai/Memoh/"
  name "Memoh"
  desc "Self hosted, always-on AI agent platform run in containers"
  homepage "https://memoh.ai/"

  app "Memoh.app"
end
