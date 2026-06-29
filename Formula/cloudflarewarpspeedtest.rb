class Cloudflarewarpspeedtest < Formula
  desc "WARP IP 优选工具"
  homepage "https://github.com/puzige/CloudflareWarpSpeedTest"
  url "https://github.com/puzige/CloudflareWarpSpeedTest/releases/download/v1.5.15/CloudflareWarpSpeedTest-v1.5.15-darwin-arm64.tar.gz"
  version "1.5.15"
  sha256 "ca411a9e4a61f41c63cb0fa9f440817ca0b1a1efffd89e0688e13c226414e3cc"
  license "GPL-3.0"
  head "https://github.com/puzige/CloudflareWarpSpeedTest.git", branch: "master"

  def install
    bin.install "CloudflareWarpSpeedTest"
    chmod 0755, bin/"CloudflareWarpSpeedTest"
  end
end
