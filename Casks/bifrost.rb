cask "bifrost" do
  version "2.1.2"
  sha256 "480920afb2b67ff733c7c0c2f981430ff0b15d221150891e4a34a6fb4d9855a9"

  url "https://github.com/zacharee/SamloaderKotlin/releases/download/2.1.2/bifrost-2.1.2-mac-aarch64.zip",
      verified: "github.com/zacharee/SamloaderKotlin/"
  name "Bifrost"
  desc "This is yet another firmware downloader for Samsung devices, but it has some special features"
  homepage "https://github.com/zacharee/SamloaderKotlin"

  app "Bifrost.app"
end
