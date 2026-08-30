cask "sfm@beta" do
  version "1.14.0-rc.4"
  sha256 "e26c8a992eb6ce5762e01a472a6b2444e0dbaabdb1e43f2da858a26f7cab90b4"

  url "https://github.com/SagerNet/sing-box/releases/download/v1.14.0-rc.4/SFM-1.14.0-rc.4-Apple.pkg",
      verified: "github.com/SagerNet/sing-box/"
  name "SFM"
  desc "Standalone client for sing-box, the universal proxy platform"
  homepage "https://sing-box.sagernet.org/"

  conflicts_with cask: [
    "sfm",
    "sfm@alpha",
    "sfm@rc",
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
