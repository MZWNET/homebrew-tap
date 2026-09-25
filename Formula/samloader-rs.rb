class SamloaderRs < Formula
  desc "Download firmware for Samsung devices"
  homepage "https://github.com/topjohnwu/samloader-rs"
  url "https://github.com/topjohnwu/samloader-rs/releases/download/2.2.0/samloader-v2.2.0-macos-universal.zip"
  version "2.2.0"
  sha256 "74578787146ad284ad285b00c1270b7db0ff8d31576f19159103bb1bf56cf808"
  license "Apache-2.0, MIT"
  head "https://github.com/topjohnwu/samloader-rs.git", branch: "main"

  def install
    bin.install "samloader"
    chmod 0755, bin/"samloader"
  end
end
