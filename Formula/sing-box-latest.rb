class SingBoxLatest < Formula
  desc "Universal proxy platform"
  homepage "https://sing-box.sagernet.org"
  license "GPL-3.0-or-later"
  head "https://github.com/SagerNet/sing-box.git", branch: "dev-next"

  version "1.13.0-rc.7"
  url "https://github.com/SagerNet/sing-box/releases/download/v1.13.0-rc.7/sing-box-1.13.0-rc.7-darwin-arm64.tar.gz"
  sha256 "e45e83bb2a1212db3f629481c81e96ecb07dc4b6ed4ff3ef4207de25f902d72f"

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
