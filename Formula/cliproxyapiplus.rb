class Cliproxyapiplus < Formula
  desc "CCS-maintained fork of CLIProxyAPIPlus"
  homepage "https://github.com/kaitranntt/CLIProxyAPIPlus"
  url "https://github.com/kaitranntt/CLIProxyAPIPlus/releases/download/v7.2.116-5/CLIProxyAPIPlus_7.2.116-5_darwin_aarch64_no-plugin.tar.gz"
  version "7.2.116,5"
  sha256 "09474a32928fa11399f3fdd7c9eecaf900a15b841eeafc4335246910b44fe8f7"
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
