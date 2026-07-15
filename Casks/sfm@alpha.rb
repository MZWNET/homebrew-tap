cask "sfm@alpha" do
  version "1.14.0-alpha.44"
  sha256 "1c4b414787697cbe522a3aca8f5fe8951bf6f0e0d85946bd32cc6527e087af1e"

  url "https://github.com/SagerNet/sing-box/releases/download/v1.14.0-alpha.44/SFM-1.14.0-alpha.44-Apple.pkg",
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
