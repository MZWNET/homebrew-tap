cask "sfm-latest" do
    name "SFM"
    desc "Standalone client for sing-box, the universal proxy platform"
    homepage "https://sing-box.sagernet.org/"

    version "1.13.0-rc.7"
    url "https://github.com/SagerNet/sing-box/releases/download/v1.13.0-rc.7/SFM-1.13.0-rc.7-Apple.pkg",
        verified: "github.com/SagerNet/sing-box/"
    sha256 "2b5d5cebcf5d67d91afd1a975522a9ee62a9a4a405ecf52adedf2eb29eccb8eb"

    depends_on macos: ">= :ventura"

    pkg "SFM-#{version}-Apple.pkg"

    uninstall   quit:       "io.nekohasekai.sfavt.standalone",
                login_item: "SFM",
                pkgutil:    "io.nekohasekai.sfavt.standalone"
end
