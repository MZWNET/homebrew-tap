cask "sfm-latest" do
  version "1.14.0-alpha.25"
  sha256 "6fd798bb095ee3dfb305eed51c148bdfcaebb2db6ef3b69085b2d720f0dc0f06"

  url "https://github.com/SagerNet/sing-box/releases/download/v1.14.0-alpha.25/SFM-1.14.0-alpha.25-Apple.pkg",
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
