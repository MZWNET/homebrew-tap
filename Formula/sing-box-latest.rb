class SingBoxLatest < Formula
  desc "Universal proxy platform"
  homepage "https://sing-box.sagernet.org"
  license "GPL-3.0-or-later"
  head "https://github.com/SagerNet/sing-box.git", branch: "dev-next"

  version "1.13.0-rc.4"
  url "https://github.com/SagerNet/sing-box/releases/download/v1.13.0-rc.4/sing-box-1.13.0-rc.4-darwin-arm64.tar.gz"
  sha256 "667c1a5c689b7cfe83e2f5113329d4b399d8ed52b43083c72b17c3dc61b3d3ab"

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
