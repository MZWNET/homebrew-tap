class Cloudflarespeedtest < Formula
  desc "「自选优选 IP」测试 Cloudflare CDN 延迟和速度，获取最快 IP ！当然也支持其他 CDN / 多个解析 IP 的网站 ~"
  homepage "https://github.com/XIU2/CloudflareSpeedTest"
  url "https://github.com/XIU2/CloudflareSpeedTest/releases/download/v2.3.5/cfst_darwin_arm64.zip"
  version "2.3.5"
  sha256 "0623f6d24c939e3d3716f556f4d39c7b8781cf6600ee838a1b64e6b2fe4609dc"
  license "GPL-3.0"
  head "https://github.com/XIU2/CloudflareSpeedTest.git", branch: "master"

  def install
    bin.install "cfst"
    chmod 0755, bin/"cfst"
  end
end
