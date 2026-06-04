cask "memoh" do
  version "0.11.0"
  sha256 "dd0d24f201cd142aa50783c8adcb25a6c42edb28351af33c618800986c540f7c"

  url "https://github.com/memohai/Memoh/releases/download/v0.11.0/Memoh-0.11.0-mac-arm64.dmg",
      verified: "github.com/memohai/Memoh/"
  name "Memoh"
  desc "Self hosted, always-on AI agent platform run in containers"
  homepage "https://memoh.ai/"

  app "Memoh.app"
end
