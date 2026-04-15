class SingBoxLatest < Formula
  desc "Universal proxy platform"
  homepage "https://sing-box.sagernet.org"
  url "https://github.com/SagerNet/sing-box/releases/download/v1.14.0-alpha.12/sing-box-1.14.0-alpha.12-darwin-arm64.tar.gz"
  version "1.14.0-alpha.12"
  sha256 "0ddc43f14fee90f998e02a21ed6c624b23f7f6a18471b8f6f51776e4d4fb0b05"
  license "GPL-3.0-or-later"
  head "https://github.com/SagerNet/sing-box.git", branch: "dev-next"

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
