cask "bifrost" do
  version "2.0.0"
  sha256 "a851f78a2c3dc524910e8ebe2cd373e9e4b7c3f6fe4cf21ac83653d2b2328d46"

  url "https://github.com/zacharee/SamloaderKotlin/releases/download/2.0.0/bifrost-2.0.0-mac-aarch64.zip",
      verified: "github.com/zacharee/SamloaderKotlin/"
  name "Bifrost"
  desc "This is yet another firmware downloader for Samsung devices, but it has some special features"
  homepage "https://github.com/zacharee/SamloaderKotlin"

  app "Bifrost.app"
end
