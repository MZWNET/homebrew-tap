class KiroRs < Formula
  desc "A Kiro Client in Rust"
  homepage "https://github.com/hank9999/kiro.rs"
  url "https://github.com/MZWNET/actions/releases/download/kiro-rs-v2026.3.1/kiro-rs-v2026.3.1-aarch64-apple-darwin.zip"
  version "2026.3.1"
  sha256 "347e69f57397d2bbe28e1fe3f6692429661e4c31720780d828852cfdaf964465"
  license "MIT"
  head "https://github.com/hank9999/kiro.rs.git"

  def install
    bin.install "kiro-rs"
    chmod 0755, bin/"kiro-rs"
  end
end
