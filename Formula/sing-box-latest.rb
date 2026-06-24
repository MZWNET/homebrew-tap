class SingBoxLatest < Formula
  desc "Universal proxy platform"
  homepage "https://sing-box.sagernet.org"
  url "https://github.com/SagerNet/sing-box/releases/download/v1.14.0-alpha.34/sing-box-1.14.0-alpha.34-darwin-arm64.tar.gz"
  version "1.14.0-alpha.34"
  sha256 "d3f065faeab9133b68071d5b95be1b62644414dbde124e7e007b3c278a77f8cc"
  license "GPL-3.0-or-later"
  head "https://github.com/SagerNet/sing-box.git", branch: "dev-next"

  conflicts_with "sing-box"

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
