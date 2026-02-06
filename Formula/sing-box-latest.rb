class SingBoxLatest < Formula
  desc "Universal proxy platform"
  homepage "https://sing-box.sagernet.org"
  license "GPL-3.0-or-later"
  head "https://github.com/SagerNet/sing-box.git", branch: "dev-next"

  version "1.13.0-rc.2"
  url "https://github.com/SagerNet/sing-box/releases/download/v1.13.0-rc.2/sing-box-1.13.0-rc.2-darwin-arm64.tar.gz"
  sha256 "220514b3dc35cfd1a511f31706804e44a6b7ca1b736a9da8066d1f51c1df4fba"

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
