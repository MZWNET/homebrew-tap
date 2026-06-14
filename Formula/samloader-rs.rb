class SamloaderRs < Formula
  desc "Download firmware for Samsung devices"
  homepage "https://github.com/topjohnwu/samloader-rs"
  url "https://github.com/MZWNET/actions/releases/download/hydroxide-v0.2.32/hydroxide-v0.2.32-macos-arm64.zip"
  version "0.2.32"
  sha256 "a4788086bcfc0fc5712faef7c3c7f33d8bb49516c9017e522f05a96287472dc2"
  license "Apache-2.0, MIT"
  head "https://github.com/topjohnwu/samloader-rs.git", branch: "main"

  def install
    bin.install "samloader"
    chmod 0755, bin/"samloader"
  end
end
