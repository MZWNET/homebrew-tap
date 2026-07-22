class SingBoxAlpha < Formula
  desc "Universal proxy platform"
  homepage "https://sing-box.sagernet.org"
  url "https://github.com/SagerNet/sing-box/releases/download/v1.14.0-alpha.50/sing-box-1.14.0-alpha.50-darwin-arm64.tar.gz"
  version "1.14.0-alpha.50"
  sha256 "fb8a6ffbaf84767a9e938c5949516c88c639dbde35efaf8f37839f638ddca8a9"
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
