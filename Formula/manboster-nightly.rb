class ManbosterNightly < Formula
  desc "你的曼波虾头小助手"
  homepage "https://manboster.dev/"
  url "https://github.com/manboster/manboster/releases/download/nightly-20260615/manboster_0.1.0-SNAPSHOT-982237c_darwin_arm64.tar.gz"
  version "0.1.0,982237c"
  sha256 "76420a725035884e852a76f9967591673fa6c4c2bad08df1707684093c3575a8"
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
