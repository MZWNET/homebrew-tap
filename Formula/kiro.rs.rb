class KiroRs < Formula
  desc "A Kiro Client in Rust"
  homepage "https://github.com/hank9999/kiro.rs"
  url "https://github.com/safedep/gryph/releases/download/v0.7.0/gryph_Darwin_all.tar.gz"
  version "0.7.0"
  sha256 "07e6827409e3f2b5b41b8f6ffa4651e343489563f26c28c09808af0794165077"
  head "https://github.com/hank9999/kiro.rs.git"

  def install
    bin.install "gryph"
    chmod 0755, bin/"gryph"
  end
end
