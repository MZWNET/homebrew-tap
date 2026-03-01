class SingBoxLatest < Formula
  desc "Universal proxy platform"
  homepage "https://sing-box.sagernet.org"
  license "GPL-3.0-or-later"
  head "https://github.com/SagerNet/sing-box.git", branch: "dev-next"

  version "1.13.0"
  url "https://github.com/SagerNet/sing-box/releases/download/v1.13.0/sing-box-1.13.0-darwin-arm64.tar.gz"
  sha256 "dd8688dd48e64b81105b6def9ec9fa5d22be71f7cb4f2cce20cabdf09b40c067"

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
