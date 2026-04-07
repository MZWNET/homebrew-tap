cask "sfm-latest" do
  version "1.14.0-alpha.9"
  sha256 "d6f65a61350ee7aad2212e9f2d211ba0f08192dc8d169bd80adc4cfe6f1b894f"

  url "https://github.com/SagerNet/sing-box/releases/download/v1.14.0-alpha.9/SFM-1.14.0-alpha.9-Apple.pkg",
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
