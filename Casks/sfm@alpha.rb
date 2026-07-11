cask "sfm@alpha" do
  version "1.14.0-alpha.43"
  sha256 "2bf194a8a194c9791a7d0c37924ba49056d60a36bb55d353e563751cd6f3e450"

  url "https://github.com/SagerNet/sing-box/releases/download/v1.14.0-alpha.43/SFM-1.14.0-alpha.43-Apple.pkg",
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
