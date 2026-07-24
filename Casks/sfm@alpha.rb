cask "sfm@alpha" do
  version "1.14.0-beta.1"
  sha256 "6ca0a18536870862bebd2fb70106c07c12f777b44fb66c180bce167554f1dc6c"

  url "https://github.com/SagerNet/sing-box/releases/download/v1.14.0-beta.1/SFM-1.14.0-beta.1-Apple.pkg",
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
