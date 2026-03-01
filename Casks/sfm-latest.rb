cask "sfm-latest" do
    name "SFM"
    desc "Standalone client for sing-box, the universal proxy platform"
    homepage "https://sing-box.sagernet.org/"

    version "1.13.0"
    url "https://github.com/SagerNet/sing-box/releases/download/v1.13.0/SFM-1.13.0-Apple.pkg",
        verified: "github.com/SagerNet/sing-box/"
    sha256 "518ac39c1a28bf0df3616a0fb5685c8434dda43a7fc53471662c86359e004985"

    depends_on macos: ">= :ventura"

    pkg "SFM-#{version}-Apple.pkg"

    uninstall   quit:       "io.nekohasekai.sfavt.standalone",
                login_item: "SFM",
                pkgutil:    "io.nekohasekai.sfavt.standalone"
end
