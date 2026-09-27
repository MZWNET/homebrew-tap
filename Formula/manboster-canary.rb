class ManbosterCanary < Formula
  desc "你的曼波虾头小助手"
  homepage "https://manboster.dev/"
  url "https://github.com/manboster/manboster/releases/download/canary/manboster_0.2.3-3aac0ad_darwin_arm64.tar.gz"
  version "0.2.3,3aac0ad"
  sha256 "1c1d90abe3bddd356be5447319351e1ced43daa1d5b7675acf3e4a89baa525ec"
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
