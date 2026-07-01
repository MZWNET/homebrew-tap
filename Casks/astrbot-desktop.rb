cask "astrbot-desktop" do
  version "4.26.3"
  sha256 "1e0392ce19f28ecba2fef912bcc0fa379ce5cf54f9fb7f7ae686cfeee3878985"

  url "https://github.com/AstrBotDevs/AstrBot-desktop/releases/download/v4.26.3/AstrBot_4.26.3_macos_arm64.app.tar.gz",
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
