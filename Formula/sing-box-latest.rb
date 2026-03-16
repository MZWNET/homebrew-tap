class SingBoxLatest < Formula
  desc "Universal proxy platform"
  homepage "https://sing-box.sagernet.org"
  url "https://github.com/SagerNet/sing-box/releases/download/v1.13.3/sing-box-1.13.3-darwin-arm64.tar.gz"
  version "1.13.3"
  sha256 "4484e4d8cf7889869194a4996a73af9ccf489f045f0c4f0d95bf946164f92e7c"
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
