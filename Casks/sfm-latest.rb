cask "sfm-latest" do
  version "1.14.0-alpha.12"
  sha256 "2cb411604ef4f77aafe5b5e5e98d4d34515fef94bda4dc2e1dfd886d16a3f4b6"

  url "https://github.com/SagerNet/sing-box/releases/download/v1.14.0-alpha.12/SFM-1.14.0-alpha.12-Apple.pkg",
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
