cask "sfm-latest" do
  version "1.14.0-alpha.10"
  sha256 "eeb2fbeefec199250a43a8238e313b84596136fcb5dc1c0666d1ec9e7e8e30e2"

  url "https://github.com/SagerNet/sing-box/releases/download/v1.14.0-alpha.10/SFM-1.14.0-alpha.10-Apple.pkg",
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
