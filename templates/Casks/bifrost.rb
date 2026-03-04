cask "bifrost" do
  version "#{{ver}}"
  sha256 "#{{sha256}}"

  url "#{{url}}",
      verified: "github.com/zacharee/SamloaderKotlin/"
  name "Bifrost"
  desc "This is yet another firmware downloader for Samsung devices, but it has some special features"
  homepage "https://github.com/zacharee/SamloaderKotlin"

  app "Bifrost.app"
end
