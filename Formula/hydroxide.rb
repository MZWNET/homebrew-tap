class Hydroxide < Formula
  desc "A third-party, open-source ProtonMail CardDAV, IMAP and SMTP bridge"
  homepage "https://github.com/emersion/hydroxide"
  url "https://github.com/MZWNET/actions/releases/download/hydroxide-v0.2.32/hydroxide-v0.2.32-macos-arm64.zip"
  version "0.2.32"
  sha256 "a4788086bcfc0fc5712faef7c3c7f33d8bb49516c9017e522f05a96287472dc2"
  license "Apache-2.0"
  head "https://github.com/emersion/hydroxide.git", branch: "master"

  def install
    bin.install "hydroxide"
    chmod 0755, bin/"hydroxide"
  end
end
