cask "sfm@alpha" do
  version "1.15.0-alpha.6"
  sha256 "17314aeacc20ad0dfd78cbdfcc30908541173cf8cbc2911ac54fd2fde1453dd7"

  url "https://github.com/SagerNet/sing-box/releases/download/v1.15.0-alpha.6/SFM-1.15.0-alpha.6-Apple.pkg"
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
