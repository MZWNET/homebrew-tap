class SingBoxLatest < Formula
  desc "Universal proxy platform"
  homepage "https://sing-box.sagernet.org"
  url "https://github.com/SagerNet/sing-box/releases/download/v1.14.0-alpha.18/sing-box-1.14.0-alpha.18-darwin-arm64.tar.gz"
  version "1.14.0-alpha.18"
  sha256 "873775b56d76feddb299eda4552808628575f3d9790b8dc26e788066f1fac4be"
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
