cask "sfm-latest" do
    name "SFM"
    desc "Standalone client for sing-box, the universal proxy platform"
    homepage "https://sing-box.sagernet.org/"

    version "1.13.0-rc.1"
    url "https://github.com/SagerNet/sing-box/releases/download/v1.13.0-rc.1/SFM-1.13.0-rc.1-Apple.pkg",
        verified: "github.com/SagerNet/sing-box/"
    sha256 "32a4d2cca5e13d29e88a7239b035fb9c3d97c3467c9b5c7611a3e975d94c3d34"

    depends_on macos: ">= :ventura"

    pkg "SFM-#{version}-Apple.pkg"

    uninstall   quit:       "io.nekohasekai.sfavt.standalone",
                login_item: "SFM",
                pkgutil:    "io.nekohasekai.sfavt.standalone"
end
