cask "astrbot-desktop" do
  version "4.22.0"
  sha256 "12f136c3eaf621e994485fc01bbdb469a7ab38321fa5f2907f0b8c81543fa6f8"

  url "https://github.com/AstrBotDevs/AstrBot-desktop/releases/download/v4.22.0/AstrBot_4.22.0_macos_arm64.app.tar.gz",
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
