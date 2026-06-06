class Hydroxide < Formula
  desc "A third-party, open-source ProtonMail CardDAV, IMAP and SMTP bridge"
  homepage "https://github.com/emersion/hydroxide"
  url "https://github.com/emersion/hydroxide/releases/download/v0.1.0/hydroxide-0.1.0-stable-b1640a-darwin-arm64"
  version "0.1.0_b1640a"
  sha256 "2fbc48af7b80cdc286c8b618cdd41a220ed6b67cdf4fd7b8c6e1d2952d2f15cd"
  license "Apache-2.0"
  head "https://github.com/emersion/hydroxide.git", branch: "master"

  def install
    bin.install "hydroxide"
    chmod 0755, bin/"hydroxide"
  end
end
