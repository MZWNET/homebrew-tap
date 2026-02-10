cask "sfm-latest" do
    name "SFM"
    desc "Standalone client for sing-box, the universal proxy platform"
    homepage "https://sing-box.sagernet.org/"

    version "1.13.0-rc.3"
    url "https://github.com/SagerNet/sing-box/releases/download/v1.13.0-rc.3/SFM-1.13.0-rc.3-Apple.pkg",
        verified: "github.com/SagerNet/sing-box/"
    sha256 "255d119510a7dcab4f69264f5038cc3dd303bc79b95ea7a07bf3c14aa18a56a0"

    depends_on macos: ">= :ventura"

    pkg "SFM-#{version}-Apple.pkg"

    uninstall   quit:       "io.nekohasekai.sfavt.standalone",
                login_item: "SFM",
                pkgutil:    "io.nekohasekai.sfavt.standalone"
end
