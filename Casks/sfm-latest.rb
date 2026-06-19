cask "sfm-latest" do
  version "1.14.0-alpha.32"
  sha256 "f945369c14ed0e3b55b99ea8b6737309455bbf89b11dcd0bf583cb8357dd8dd6"

  url "https://github.com/SagerNet/sing-box/releases/download/v1.14.0-alpha.32/SFM-1.14.0-alpha.32-Apple.pkg",
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
