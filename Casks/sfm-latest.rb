cask "sfm-latest" do
    name "SFM"
    desc "Standalone client for sing-box, the universal proxy platform"
    homepage "https://sing-box.sagernet.org/"

    version "1.13.1-beta.2"
    url "https://github.com/SagerNet/sing-box/releases/download/v1.13.1-beta.2/SFM-1.13.1-beta.2-Apple.pkg",
        verified: "github.com/SagerNet/sing-box/"
    sha256 "36651a6ac70bf72bb25f993c9a69afd30699929b81ed1b07227f9e53df0b7404"

    depends_on macos: ">= :ventura"

    pkg "SFM-#{version}-Apple.pkg"

    uninstall   quit:       "io.nekohasekai.sfavt.standalone",
                login_item: "SFM",
                pkgutil:    "io.nekohasekai.sfavt.standalone"
end
