cask "bifrost" do
  version "2.1.4"
  sha256 "b9edc029e6f9c7f8a2ec4f9ca66bcf6067fa40f7db876da7e9ceb38705ad2bb2"

  url "https://github.com/zacharee/SamloaderKotlin/releases/download/#{version}/bifrost-#{version}-mac-aarch64.zip"
  name "Bifrost"
  desc "This is yet another firmware downloader for Samsung devices, but it has some special features"
  homepage "https://github.com/zacharee/SamloaderKotlin"

  app "Bifrost.app"
end
