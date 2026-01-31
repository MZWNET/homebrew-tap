cask "sfm-latest" do
    name "SFM"
    desc "Standalone client for sing-box, the universal proxy platform"
    homepage "https://sing-box.sagernet.org/"

    version "1.13.0-beta.8"
    url "https://github.com/SagerNet/sing-box/releases/download/v1.13.0-beta.8/SFM-1.13.0-beta.8-Apple.pkg",
        verified: "github.com/SagerNet/sing-box/"
    sha256 "23c4bb6dc49e40c26ff9553e06de2d4c2466d9ab4291f225d1537e93fafcca87"

    depends_on macos: ">= :ventura"

    pkg "SFM-#{version}-Apple.pkg"

    uninstall   quit:       "io.nekohasekai.sfavt.standalone",
                login_item: "SFM",
                pkgutil:    "io.nekohasekai.sfavt.standalone"
end
