class SamloaderRs < Formula
  desc "Download firmware for Samsung devices"
  homepage "https://github.com/topjohnwu/samloader-rs"
  url "https://github.com/topjohnwu/samloader-rs/releases/download/2.0.0/samloader-v2.0.0-macos-universal.tar.xz"
  version "2.0.0"
  sha256 "7afc22fc9885e762b7a06a979cccc93c55b1baae85f0412933f97a3441df1141"
  license "Apache-2.0, MIT"
  head "https://github.com/topjohnwu/samloader-rs.git", branch: "main"

  def install
    bin.install "samloader"
    chmod 0755, bin/"samloader"
  end
end
