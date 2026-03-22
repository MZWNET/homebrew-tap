cask "astrbot-desktop" do
  version "4.21.0"
  sha256 "b93f50c6d754abbfc4707fe699e65f156ce2fec402683a8584bc54f12298132d"

  url "https://github.com/AstrBotDevs/AstrBot-desktop/releases/download/v4.21.0/AstrBot_4.21.0_macos_arm64.app.tar.gz",
      verified: "github.com/AstrBotDevs/AstrBot-desktop/"
  name "AstrBot Desktop"
  desc "Desktop edition of AstrBot, designed for fast local installation and convenient access to ChatUI and plugins"
  homepage "https://github.com/AstrBotDevs/AstrBot-desktop"

  app "AstrBot.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "/Applications/AstrBot.app"]
    system_command "/usr/bin/codesign", args: ["-fs", "-", "/Applications/AstrBot.app"]
  end
end
