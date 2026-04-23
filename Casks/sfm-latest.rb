cask "sfm-latest" do
  version "1.14.0-alpha.17"
  sha256 "8e5c292493a7ce1061e87bdab293ab7da426330f674f0ae2b2c74ef2b1b3c7f3"

  url "https://github.com/SagerNet/sing-box/releases/download/v1.14.0-alpha.17/SFM-1.14.0-alpha.17-Apple.pkg",
      verified: "github.com/SagerNet/sing-box/"
  name "SFM"
  desc "Standalone client for sing-box, the universal proxy platform"
  homepage "https://sing-box.sagernet.org/"

  depends_on macos: ">= :ventura"

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
