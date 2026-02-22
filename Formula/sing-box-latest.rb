class SingBoxLatest < Formula
  desc "Universal proxy platform"
  homepage "https://sing-box.sagernet.org"
  license "GPL-3.0-or-later"
  head "https://github.com/SagerNet/sing-box.git", branch: "dev-next"

  version "1.13.0-rc.5"
  url "https://github.com/SagerNet/sing-box/releases/download/v1.13.0-rc.5/sing-box-1.13.0-rc.5-darwin-arm64.tar.gz"
  sha256 "4d6bff076cb8fbb8eb5432e258171dbb4f5b22eb399b7da963f420aab29450ce"

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
