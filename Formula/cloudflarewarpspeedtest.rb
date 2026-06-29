class Cloudflarewarpspeedtest < Formula
  desc "WARP IP 优选工具"
  homepage "https://github.com/puzige/CloudflareWarpSpeedTest"
  url "https://github.com/XIU2/CloudflareSpeedTest/releases/download/v2.3.5/cfst_darwin_arm64.zip"
  version "2.3.5"
  sha256 "0623f6d24c939e3d3716f556f4d39c7b8781cf6600ee838a1b64e6b2fe4609dc"
  license "GPL-3.0"
  head "https://github.com/puzige/CloudflareWarpSpeedTest.git", branch: "master"

  def install
    bin.install "CloudflareWarpSpeedTest"
    chmod 0755, bin/"CloudflareWarpSpeedTest"
  end
end
