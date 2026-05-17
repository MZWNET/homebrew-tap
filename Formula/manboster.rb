class Manboster < Formula
  desc "你的曼波虾头小助手"
  homepage "https://git.wbhh.moe/chi/manboster"
  url "https://git.wbhh.moe/chi/manboster/releases/download/0.1.0-rc/manboster-0.1.0-rc-06e44a-darwin-arm64"
  version "0.1.0_06e44a"
  sha256 "2531c0bee9d522a651046e3ef1423e262c167af0ce4d91e71ba5b73e9c067115"
  license "Apache-2.0"
  head "https://git.wbhh.moe/chi/manboster.git", branch: "master"

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
