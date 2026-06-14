class SamloaderRs < Formula
  desc "Download firmware for Samsung devices"
  homepage "https://github.com/topjohnwu/samloader-rs"
  url "https://github.com/topjohnwu/samloader-rs/releases/download/1.2.0/samloader-macos-universal.tar.xz"
  version "1.2.0"
  sha256 "0809701992136096c906a992dc4af1272921cef3c37be071c57c2bb03da53b58"
  license "Apache-2.0, MIT"
  head "https://github.com/topjohnwu/samloader-rs.git", branch: "main"

  def install
    bin.install "samloader"
    chmod 0755, bin/"samloader"
  end
end
