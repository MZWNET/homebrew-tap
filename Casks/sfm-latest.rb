cask "sfm-latest" do
    name "SFM"
    desc "Standalone client for sing-box, the universal proxy platform"
    homepage "https://sing-box.sagernet.org/"

    version "1.13.0-rc.4"
    url "https://github.com/SagerNet/sing-box/releases/download/v1.13.0-rc.4/SFM-1.13.0-rc.4-Apple.pkg",
        verified: "github.com/SagerNet/sing-box/"
    sha256 "427d648e340a679fc86768b731c6dbdba40f7f43b3f3f396e3799976e74fde73"

    depends_on macos: ">= :ventura"

    pkg "SFM-#{version}-Apple.pkg"

    uninstall   quit:       "io.nekohasekai.sfavt.standalone",
                login_item: "SFM",
                pkgutil:    "io.nekohasekai.sfavt.standalone"
end
