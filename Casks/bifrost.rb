cask "bifrost" do
    name "Bifrost"
    desc "This is yet another firmware downloader for Samsung devices, but it has some special features."
    homepage "https://github.com/zacharee/SamloaderKotlin"

    version "1.20.4"
    url "https://github.com/zacharee/SamloaderKotlin/releases/download/1.20.4/bifrost-1.20.4-mac-aarch64.zip",
        verified: "https://github.com/zacharee/SamloaderKotlin"
    sha256 "5b5057da8703ee8ed7783f52c6099a906e2dfe7c5faefff827e47d49c0b2222b"

    app "Bifrost.app"
end