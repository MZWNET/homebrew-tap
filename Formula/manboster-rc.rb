class ManbosterRc < Formula
  desc "你的曼波虾头小助手"
  homepage "https://manboster.dev/"
  url "https://github.com/manboster/manboster/releases/download/v0.2.0-rc/manboster_0.2.0-rc_darwin_arm64.tar.gz"
  version "0.2.0-rc"
  sha256 "7c913a34218a73a18b980c7dda5c1542e34f987c5a155aa1581c4755bf9d3c68"
  license "Apache-2.0"
  head "https://github.com/manboster/manboster.git", branch: "master"

  conflicts_with "manboster"

  keg_only :versioned_formula

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
