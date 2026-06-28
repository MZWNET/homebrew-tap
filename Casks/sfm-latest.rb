cask "sfm-latest" do
  version "1.14.0-alpha.36"
  sha256 "07cf0f78741bb5519348b4ad8745d7156734664fcea37ce3784f3eec864c858b"

  url "https://github.com/SagerNet/sing-box/releases/download/v1.14.0-alpha.36/SFM-1.14.0-alpha.36-Apple.pkg",
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
