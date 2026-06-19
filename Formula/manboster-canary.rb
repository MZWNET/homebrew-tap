class ManbosterCanary < Formula
  desc "你的曼波虾头小助手"
  homepage "https://manboster.dev/"
  url "https://github.com/manboster/manboster/releases/download/canary/manboster_0.2.0-e225a31_darwin_arm64.tar.gz"
  version "0.2.0,e225a31"
  sha256 "7847194b436b6248638e7a7c23b02907c7ecdbdcd86c7ac798871d51d785acb3"
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
