cask "sfm@alpha" do
  version "1.15.0-alpha.2"
  sha256 "ffd2b2ffeb3f2c05953093cd35d7d32a3f380c95e1348c65622edbd67dbc87c5"

  url "https://github.com/SagerNet/sing-box/releases/download/v1.15.0-alpha.2/SFM-1.15.0-alpha.2-Apple.pkg",
      verified: "github.com/SagerNet/sing-box/"
  name "SFM"
  desc "Standalone client for sing-box, the universal proxy platform"
  homepage "https://sing-box.sagernet.org/"

  conflicts_with cask: [
    "sfm",
    "sfm@beta",
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
