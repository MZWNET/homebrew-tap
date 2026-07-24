class ManbosterCanary < Formula
  desc "你的曼波虾头小助手"
  homepage "https://manboster.dev/"
  url "https://github.com/manboster/manboster/releases/download/canary/manboster_0.2.3-8408e39_darwin_arm64.tar.gz"
  version "0.2.3,8408e39"
  sha256 "e0bc5430c17896e0b08ccc3e5b6b66e6cf3094bea28a7f973596a5e6583ce298"
  license "Apache-2.0"
  head "https://github.com/manboster/manboster.git", branch: "dev"

  conflicts_with "manboster"

  keg_only :versioned_formula

  def install
    bin.install "manboster"
    chmod 0755, bin/"manboster"
  end

  service do
    run [opt_bin/"manboster"]
    keep_alive true
  end
end
