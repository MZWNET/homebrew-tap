cask "sfm-latest" do
    name "SFM"
    desc "Standalone client for sing-box, the universal proxy platform"
    homepage "https://sing-box.sagernet.org/"

    version "#{{ver}}"
    url "#{{url}}",
        verified: "github.com/SagerNet/sing-box/"
    sha256 "#{{sha256}}"

    depends_on macos: ">= :ventura"

    pkg "SFM-#{{ver}}-Apple.pkg"

    uninstall   quit:       "io.nekohasekai.sfavt.standalone",
                login_item: "SFM"
                pkgutil:    "io.nekohasekai.sfavt.standalone"
end
