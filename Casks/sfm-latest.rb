cask "sfm-latest" do
  version "1.14.0-alpha.35"
  sha256 "8a46212ab3798bd25f17b90bf6e2e26c7f90d0ba3212bd7540064fa3bf6b4283"

  url "https://github.com/SagerNet/sing-box/releases/download/v1.14.0-alpha.35/SFM-1.14.0-alpha.35-Apple.pkg",
      verified: "github.com/SagerNet/sing-box/"
  name "SFM"
  desc "Standalone client for sing-box, the universal proxy platform"
  homepage "https://sing-box.sagernet.org/"

  conflicts_with "SFM"

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
