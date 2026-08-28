class Gryph < Formula
  desc "About Security layer for AI coding agents"
  homepage "https://github.com/safedep/gryph"
  url "https://github.com/safedep/gryph/releases/download/v0.9.0/gryph_Darwin_all.tar.gz"
  version "0.9.0"
  sha256 "631cb8d008228ee5e8bc70e6875b2ebc182d4f50075562295e66b1db06e21431"
  license "Apache-2.0"
  head "https://github.com/safedep/gryph.git"

  def install
    bin.install "gryph"
    chmod 0755, bin/"gryph"
  end
end
