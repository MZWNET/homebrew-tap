cask "bifrost" do
    name "Bifrost"
    desc "This is yet another firmware downloader for Samsung devices, but it has some special features."
    homepage "https://github.com/zacharee/SamloaderKotlin"

    version "#{{ver}}"
    url "#{{url}}",
        verified: "https://github.com/zacharee/SamloaderKotlin"
    sha256 "#{{sha256}}"

    app "Bifrost.app"
end