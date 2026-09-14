cask "sfm@alpha" do
  version "1.15.0-alpha.3"
  sha256 "cc7429a1a9d208cdafe37dfc38d4ea66f94d1ae16d9fcd2ccf28eb98b80453b1"

  url "https://github.com/SagerNet/sing-box/releases/download/v1.15.0-alpha.3/SFM-1.15.0-alpha.3-Apple.pkg"
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
