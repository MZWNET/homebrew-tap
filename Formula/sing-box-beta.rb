class SingBoxBeta < Formula
  desc "Universal proxy platform"
  homepage "https://sing-box.sagernet.org"
  url "https://github.com/SagerNet/sing-box/releases/download/v1.14.0-beta.7/sing-box-1.14.0-beta.7-darwin-arm64.tar.gz"
  version "1.14.0-beta.7"
  sha256 "59cde7ad9eb6ee4c74b3cac15096a2a8a1e0394dec66fe2fa4d82575f4f3dc37"
  license "GPL-3.0-or-later"
  head "https://github.com/SagerNet/sing-box.git", branch: "testing"

  conflicts_with "sing-box"

  keg_only :versioned_formula

  def install
    bin.install "sing-box"
    generate_completions_from_executable(bin/"sing-box", shell_parameter_format: :cobra)
  end

  service do
    run [opt_bin/"sing-box", "run", "--config", etc/"sing-box/config.json", "--directory", var/"lib/sing-box"]
    run_type :immediate
    keep_alive true
  end
end
