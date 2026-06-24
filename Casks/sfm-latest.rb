cask "sfm-latest" do
  version "1.14.0-alpha.34"
  sha256 "baef7fd33e86500c99b9ade0a20afe8e93f677af1eba93476841f9daa80813fe"

  url "https://github.com/SagerNet/sing-box/releases/download/v1.14.0-alpha.34/SFM-1.14.0-alpha.34-Apple.pkg",
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
