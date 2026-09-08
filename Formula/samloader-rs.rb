class SamloaderRs < Formula
  desc "Download firmware for Samsung devices"
  homepage "https://github.com/topjohnwu/samloader-rs"
  url "https://github.com/topjohnwu/samloader-rs/releases/download/2.1.0/samloader-v2.1.0-macos-universal.zip"
  version "2.1.0"
  sha256 "627d374c11739f78117421af577f3041e204c9c9501e0e8d95de1c1ec4e19534"
  license "Apache-2.0, MIT"
  head "https://github.com/topjohnwu/samloader-rs.git", branch: "main"

  def install
    bin.install "samloader"
    chmod 0755, bin/"samloader"
  end
end
