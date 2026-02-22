cask "sfm-latest" do
    name "SFM"
    desc "Standalone client for sing-box, the universal proxy platform"
    homepage "https://sing-box.sagernet.org/"

    version "1.13.0-rc.5"
    url "https://github.com/SagerNet/sing-box/releases/download/v1.13.0-rc.5/SFM-1.13.0-rc.5-Apple.pkg",
        verified: "github.com/SagerNet/sing-box/"
    sha256 "b3c6f83bf601a290edcd2d1ba92eff1768f4dadfdff2f72df66979dc715c0597"

    depends_on macos: ">= :ventura"

    pkg "SFM-#{version}-Apple.pkg"

    uninstall   quit:       "io.nekohasekai.sfavt.standalone",
                login_item: "SFM",
                pkgutil:    "io.nekohasekai.sfavt.standalone"
end
