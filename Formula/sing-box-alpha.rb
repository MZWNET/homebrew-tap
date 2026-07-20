class SingBoxAlpha < Formula
  desc "Universal proxy platform"
  homepage "https://sing-box.sagernet.org"
  url "https://github.com/SagerNet/sing-box/releases/download/v1.14.0-alpha.48/sing-box-1.14.0-alpha.48-darwin-arm64.tar.gz"
  version "1.14.0-alpha.48"
  sha256 "572ca84375f0960475e7f994399d2d1befb66d5a21d60b0391d974b5d644c422"
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
