cask "sfm@alpha" do
  version "1.14.0-alpha.45"
  sha256 "0e33493a8a8059d21af8448e6a54d3a1a4160b5b59486c91219ae3d375b51a1d"

  url "https://github.com/SagerNet/sing-box/releases/download/v1.14.0-alpha.45/SFM-1.14.0-alpha.45-Apple.pkg",
      verified: "github.com/SagerNet/sing-box/"
  name "SFM"
  desc "Standalone client for sing-box, the universal proxy platform"
  homepage "https://sing-box.sagernet.org/"

  conflicts_with cask: [
    "sfm",
    "sfm-beta",
  ]

  pkg "SFM-#{version}-Apple.pkg"

  uninstall quit:       "io.nekohasekai.sfavt.standalone",
            login_item: "SFM",
            pkgutil:    "io.nekohasekai.sfavt.standalone"

  zap trash: [
    "~/Library/Application Scripts/287TTNZF8L.io.nekohasekai.sfavt",
    "~/Library/Group Containers/287TTNZF8L.io.nekohasekai.sfavt",
    "~/Library/Preferences/io.nekohasekai.sfavt.standalone.plist",
  ]
end
