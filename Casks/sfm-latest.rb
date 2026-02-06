cask "sfm-latest" do
    name "SFM"
    desc "Standalone client for sing-box, the universal proxy platform"
    homepage "https://sing-box.sagernet.org/"

    version "1.13.0-rc.2"
    url "https://github.com/SagerNet/sing-box/releases/download/v1.13.0-rc.2/SFM-1.13.0-rc.2-Apple.pkg",
        verified: "github.com/SagerNet/sing-box/"
    sha256 "5786d7814e332876443131cf7fab6045789f620a21ac67f9bf5e4c9ede7938bb"

    depends_on macos: ">= :ventura"

    pkg "SFM-#{version}-Apple.pkg"

    uninstall   quit:       "io.nekohasekai.sfavt.standalone",
                login_item: "SFM",
                pkgutil:    "io.nekohasekai.sfavt.standalone"
end
