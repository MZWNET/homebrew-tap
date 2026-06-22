class ManbosterCanary < Formula
  desc "你的曼波虾头小助手"
  homepage "https://manboster.dev/"
  url "https://github.com/manboster/manboster/releases/download/canary/manboster_0.2.1-2328cf7_darwin_arm64.tar.gz"
  version "0.2.1,2328cf7"
  sha256 "f450617c9115e477832961dea7630deee544356f16180dddf0512ba5c080ab31"
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
