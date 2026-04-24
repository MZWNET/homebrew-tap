cask "astrbot-desktop" do
  version "4.23.5"
  sha256 "0f78571491d204de7fe838c851c3ed9b03f8f5bcd9be348036de73501f59d9f7"

  url "https://github.com/AstrBotDevs/AstrBot-desktop/releases/download/v4.23.5/AstrBot_4.23.5_macos_arm64.app.tar.gz",
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
