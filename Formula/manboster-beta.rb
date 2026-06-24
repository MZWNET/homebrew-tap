class ManbosterBeta < Formula
  desc "你的曼波虾头小助手"
  homepage "https://manboster.dev/"
  url "https://github.com/manboster/manboster/releases/download/v0.2.3/manboster_0.2.3_darwin_arm64.tar.gz"
  version "0.2.3"
  sha256 "5cd47f82d942b6f1150db0b97afa9595d0760e73df67bc4ff6be24752ed26049"
  license "Apache-2.0"
  head "https://github.com/manboster/manboster.git", branch: "master"

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
