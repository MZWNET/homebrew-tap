cask "sfm-latest" do
  version "1.14.0-alpha.31"
  sha256 "bfee79380bfa1075af6d1e6a73ed7ad026a4cb725ad88f5cc778708695fbbd47"

  url "https://github.com/SagerNet/sing-box/releases/download/v1.14.0-alpha.31/SFM-1.14.0-alpha.31-Apple.pkg",
      verified: "github.com/SagerNet/sing-box/"
  name "SFM"
  desc "Standalone client for sing-box, the universal proxy platform"
  homepage "https://sing-box.sagernet.org/"

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
