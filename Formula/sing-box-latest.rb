class SingBoxLatest < Formula
  desc "Universal proxy platform"
  homepage "https://sing-box.sagernet.org"
  license "GPL-3.0-or-later"
  head "https://github.com/SagerNet/sing-box.git", branch: "dev-next"

  version "1.13.0-rc.6"
  url "https://github.com/SagerNet/sing-box/releases/download/v1.13.0-rc.6/sing-box-1.13.0-rc.6-darwin-arm64.tar.gz"
  sha256 "e938ae75fc8f5eba967ecbb81bc2cb1446ee42eae8d8bdb9fe40e2536e22e6f1"

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
