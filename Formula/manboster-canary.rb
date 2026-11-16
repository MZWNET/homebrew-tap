class ManbosterCanary < Formula
  desc "你的曼波虾头小助手"
  homepage "https://manboster.dev/"
  url "https://github.com/manboster/manboster/releases/download/canary/manboster_0.2.3-29d75dc_darwin_arm64.tar.gz"
  version "0.2.3,29d75dc"
  sha256 "e6bae079b56d8728ee839344057ef270714a990ec2ab7f9843e822b32064f5a7"
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
