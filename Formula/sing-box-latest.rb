class SingBoxLatest < Formula
  desc "Universal proxy platform"
  homepage "https://sing-box.sagernet.org"
  license "GPL-3.0-or-later"
  head "https://github.com/SagerNet/sing-box.git", branch: "dev-next"

  version "1.13.1-beta.2"
  url "https://github.com/SagerNet/sing-box/releases/download/v1.13.1-beta.2/sing-box-1.13.1-beta.2-darwin-arm64.tar.gz"
  sha256 "960826fa4c177ce62710c5d5ba46a1dd721d3b801cd00e7bc2e69c7f0bc50fcd"

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
