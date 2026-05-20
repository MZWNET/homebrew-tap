class Manboster < Formula
  desc "你的曼波虾头小助手"
  homepage "https://git.wbhh.moe/manboster/manboster"
  url "https://git.wbhh.moe/manboster/manboster/releases/download/v0.1.0/manboster-0.1.0-stable-b1640a-darwin-arm64"
  version "0.1.0_b1640a"
  sha256 "2fbc48af7b80cdc286c8b618cdd41a220ed6b67cdf4fd7b8c6e1d2952d2f15cd"
  license "Apache-2.0"
  head "https://git.wbhh.moe/manboster/manboster.git", branch: "master"

  def install
    executable = Dir["manboster*"].first
    bin.install executable => "manboster"
    chmod 0755, bin/"manboster"
  end

  service do
    run [opt_bin/"manboster"]
    keep_alive true
  end
end
