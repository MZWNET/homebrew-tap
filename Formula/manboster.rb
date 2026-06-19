class Manboster < Formula
  desc "你的曼波虾头小助手"
  homepage "https://manboster.dev/"
  url "https://github.com/manboster/manboster/releases/download/v0.1.0/manboster_0.1.0_darwin_arm64.tar.gz"
  version "0.1.0"
  sha256 "939b5a91c13e9fb9eac76563cbfadbac68b6d7035de4088b79dfef98efc68695"
  license "Apache-2.0"
  head "https://github.com/manboster/manboster.git", branch: "master"

  def install
    bin.install "manboster"
    chmod 0755, bin/"manboster"
  end

  service do
    run [opt_bin/"manboster"]
    keep_alive true
  end
end
