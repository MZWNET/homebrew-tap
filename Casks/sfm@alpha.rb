cask "sfm@alpha" do
  version "1.14.0-alpha.48"
  sha256 "c1ada6d0dbc7a2d9813128563371695ea284e6000ae1ae3963aa12e904a19b3c"

  url "https://github.com/SagerNet/sing-box/releases/download/v1.14.0-alpha.48/SFM-1.14.0-alpha.48-Apple.pkg",
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
