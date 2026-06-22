class ManbosterBeta < Formula
  desc "你的曼波虾头小助手"
  homepage "https://manboster.dev/"
  url "https://github.com/manboster/manboster/releases/download/v0.2.1/manboster_0.2.1_darwin_arm64.tar.gz"
  version "0.2.1"
  sha256 "392ae4c7fc46cc0026ac94bba40558bcf4ed71255d5c24e0ece85ed51db25010"
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
