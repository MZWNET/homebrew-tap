class SingBoxAlpha < Formula
  desc "Universal proxy platform"
  homepage "https://sing-box.sagernet.org"
  url "https://github.com/SagerNet/sing-box/releases/download/v1.14.0-beta.8/sing-box-1.14.0-beta.8-darwin-arm64.tar.gz"
  version "1.14.0-beta.8"
  sha256 "4a3cdb13dfe9cbf9c76576302dfbdecc42126615c5b5b3335c3843322e90d0d4"
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
