cask "sfm-latest" do
    name "SFM"
    desc "Standalone client for sing-box, the universal proxy platform"
    homepage "https://sing-box.sagernet.org/"

    version "1.13.0-rc.6"
    url "https://github.com/SagerNet/sing-box/releases/download/v1.13.0-rc.6/SFM-1.13.0-rc.6-Apple.pkg",
        verified: "github.com/SagerNet/sing-box/"
    sha256 "1f5c0951260dda5ece092ea556b6f83f10a7a272693d04b23d853e239f8d5f73"

    depends_on macos: ">= :ventura"

    pkg "SFM-#{version}-Apple.pkg"

    uninstall   quit:       "io.nekohasekai.sfavt.standalone",
                login_item: "SFM",
                pkgutil:    "io.nekohasekai.sfavt.standalone"
end
