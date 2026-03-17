cask "bifrost" do
  version "2.1.0"
  sha256 "018e657101aa4977e5067a26b366acb27360bc43add2e4ec149e1357a7b38111"

  url "https://github.com/zacharee/SamloaderKotlin/releases/download/2.1.0/bifrost-2.1.0-mac-aarch64.zip",
      verified: "github.com/zacharee/SamloaderKotlin/"
  name "Bifrost"
  desc "This is yet another firmware downloader for Samsung devices, but it has some special features"
  homepage "https://github.com/zacharee/SamloaderKotlin"

  app "Bifrost.app"
end
