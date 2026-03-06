cask "sfm-latest" do
  version "1.13.1"
  sha256 "6af30524223d3a5bff4fd54854443e8caabc987351a4f33a2d5aab8c49b9d7d7"

  url "https://github.com/SagerNet/sing-box/releases/download/v1.13.1/SFM-1.13.1-Apple.pkg",
      verified: "github.com/SagerNet/sing-box/"
  name "SFM"
  desc "Standalone client for sing-box, the universal proxy platform"
  homepage "https://sing-box.sagernet.org/"

  depends_on macos: ">= :ventura"

  pkg "SFM-#{version}-Apple.pkg"

  uninstall quit:       "io.nekohasekai.sfavt.standalone",
            login_item: "SFM",
            pkgutil:    "io.nekohasekai.sfavt.standalone"
end
