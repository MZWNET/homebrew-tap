class Cliproxyapiplus < Formula
  desc "CCS-maintained fork of CLIProxyAPIPlus"
  homepage "https://github.com/kaitranntt/CLIProxyAPIPlus"
  url "https://github.com/kaitranntt/CLIProxyAPIPlus/releases/download/v7.0.6-0/CLIProxyAPIPlus_7.0.6-0_darwin_aarch64.tar.gz"
  version "7.0.6_0"
  sha256 "10f40537e139087f3e03d858a15b1a174e9483e56a255da24ef432637b91ab18"
  license "MIT"
  head "https://github.com/kaitranntt/CLIProxyAPIPlus.git", branch: "main"

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
