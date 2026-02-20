cask "bifrost" do
    name "Bifrost"
    desc "This is yet another firmware downloader for Samsung devices, but it has some special features."
    homepage "https://github.com/zacharee/SamloaderKotlin"

    version "1.20.5"
    url "https://github.com/zacharee/SamloaderKotlin/releases/download/1.20.5/bifrost-1.20.5-mac-aarch64.zip",
        verified: "https://github.com/zacharee/SamloaderKotlin"
    sha256 "56ec96aacf00173388f1e8c0dbcf3499bbb221b2311b491da4769e33649a1dc6"

    app "Bifrost.app"
end