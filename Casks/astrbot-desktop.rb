cask "astrbot-desktop" do
  version "4.27.1"
  sha256 "63eb3b8f63c28fccc6d2c9ec6133e647c2f46cfe9999e7f968e0ab16fb0f0fed"

  url "https://github.com/AstrBotDevs/AstrBot-desktop/releases/download/v4.27.1/AstrBot_4.27.1_macos_arm64.app.tar.gz",
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
