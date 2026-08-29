class SingBoxRc < Formula
  desc "Universal proxy platform"
  homepage "https://sing-box.sagernet.org"
  url "https://github.com/SagerNet/sing-box/releases/download/v1.14.0-rc.2/sing-box-1.14.0-rc.2-darwin-arm64.tar.gz"
  version "1.14.0-rc.2"
  sha256 "7e78dcd25d7edeb1359526c19da33e5eaadac31368cbeaabfa3ead329c3d5e17"
  license "GPL-3.0-or-later"
  head "https://github.com/SagerNet/sing-box.git", branch: "testing"

  keg_only :versioned_formula

  conflicts_with "sing-box"

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
