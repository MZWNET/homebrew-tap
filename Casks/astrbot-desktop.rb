cask "astrbot-desktop" do
  version "4.25.1"
  sha256 "85e1a3c2fd8b7abe03c24701973ec1f888c708cd35c3c14547df9ba1abfa7cc1"

  url "https://github.com/AstrBotDevs/AstrBot-desktop/releases/download/v4.25.1/AstrBot_4.25.1_macos_arm64.app.tar.gz",
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
