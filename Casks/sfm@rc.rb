cask "sfm@rc" do
  version "1.14.0-rc.2"
  sha256 "2848a4be9b8455c82f92fb2b2dfbb098855f827820de6973d5fdb34ad0035d21"

  url "https://github.com/SagerNet/sing-box/releases/download/v1.14.0-rc.2/SFM-1.14.0-rc.2-Apple.pkg",
      verified: "github.com/SagerNet/sing-box/"
  name "SFM"
  desc "Standalone client for sing-box, the universal proxy platform"
  homepage "https://sing-box.sagernet.org/"

  conflicts_with cask: [
    "sfm",
    "sfm@alpha",
    "sfm@beta",
  ]
  depends_on macos: :ventura

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
