cask "sfm-latest" do
    name "SFM"
    desc "Standalone client for sing-box, the universal proxy platform"
    homepage "https://sing-box.sagernet.org/"

    version "1.13.0-beta.7"
    url "https://github.com/SagerNet/sing-box/releases/download/v1.13.0-beta.7/SFM-1.13.0-beta.7-Apple.pkg",
        verified: "github.com/SagerNet/sing-box/"
    sha256 "0f4ba1f72f6b45b29590c6171cd590675f099e27c688458f7c6857bdfedb12ec"

    depends_on macos: ">= :ventura"

    pkg "SFM-1.13.0-beta.7-Apple.pkg"

    uninstall   quit:       "io.nekohasekai.sfavt.standalone",
                login_item: "SFM"
                pkgutil:    "io.nekohasekai.sfavt.standalone"
end
