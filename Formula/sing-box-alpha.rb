class SingBoxAlpha < Formula
  desc "Universal proxy platform"
  homepage "https://sing-box.sagernet.org"
  url "https://github.com/SagerNet/sing-box/releases/download/v1.15.0-alpha.4/sing-box-1.15.0-alpha.4-darwin-arm64.tar.gz"
  version "1.15.0-alpha.4"
  sha256 "e5c2df1ff9e68d161a40ce96064ca87454187dc9df7bd66dda7a2c8e99eb5ca1"
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
