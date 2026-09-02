cask "astrbot-desktop" do
  version "4.28.0-beta.1"
  sha256 "c6cd8e50bcdb285420f1a228375bd110a8aca182ea55f5ecd9c930dab1686537"

  url "https://github.com/AstrBotDevs/AstrBot-desktop/releases/download/v4.28.0-beta.1/AstrBot_4.28.0-beta.1_macos_arm64.app.tar.gz",
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
