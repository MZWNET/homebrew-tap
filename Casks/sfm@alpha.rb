cask "sfm@alpha" do
  version "1.15.0-alpha.4"
  sha256 "2ed377f8d4249e1c0de5d0f2c1830e1889c810796904aefceae3cf167ef4b54a"

  url "https://github.com/SagerNet/sing-box/releases/download/v1.15.0-alpha.4/SFM-1.15.0-alpha.4-Apple.pkg"
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
