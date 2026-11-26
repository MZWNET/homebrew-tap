class Cliproxyapiplus < Formula
  desc "CCS-maintained fork of CLIProxyAPIPlus"
  homepage "https://github.com/kaitranntt/CLIProxyAPIPlus"
  url "https://github.com/kaitranntt/CLIProxyAPIPlus/releases/download/v8.1.3-1/CLIProxyAPIPlus_8.1.3-1_darwin_aarch64_no-plugin.tar.gz"
  version "8.1.3,1"
  sha256 "cdd2bb2dd09d78aa54950b9765d26cb00ee220a3848d4b8abab58bd3bd76a60b"
  license "MIT"
  head "https://github.com/kaitranntt/CLIProxyAPIPlus.git", branch: "main"

  conflicts_with "cliproxyapi"

  def install
    bin.install "cli-proxy-api-plus"
    chmod 0755, bin/"cli-proxy-api-plus"
  end

  service do
    run [opt_bin/"cli-proxy-api-plus", "--config", etc/"cliproxyapiplus.yaml"]
    keep_alive true
  end

  test do
    require "pty"
    PTY.spawn(bin/"cli-proxy-api-plus", "-login", "-no-browser") do |r, _w, pid|
      sleep 5
      Process.kill "TERM", pid
      assert_match "accounts.google.com", r.read_nonblock(1024)
    end
  end
end
