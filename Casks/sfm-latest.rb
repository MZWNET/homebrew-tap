cask "sfm-latest" do
  version "1.14.0-alpha.33"
  sha256 "3aaa9b9fe908c74c7b5ba57d4679cd7ccaa958aaeec27a879b376f93ed13304f"

  url "https://github.com/SagerNet/sing-box/releases/download/v1.14.0-alpha.33/SFM-1.14.0-alpha.33-Apple.pkg",
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
