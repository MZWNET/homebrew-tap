cask "memoh" do
  version "0.14.0"
  sha256 "1cc3ea0e6534f34e9e397104ce4ac445945d37ab6544de27c30266c548ab2dc7"

  url "https://github.com/memohai/Memoh/releases/download/v0.14.0/Memoh-0.14.0-mac-arm64.dmg",
      verified: "github.com/memohai/Memoh/"
  name "Memoh"
  desc "Self hosted, always-on AI agent platform run in containers"
  homepage "https://memoh.ai/"

  app "Memoh.app"
end
