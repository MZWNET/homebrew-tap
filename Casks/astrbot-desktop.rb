cask "astrbot-desktop" do
  version "4.26.1"
  sha256 "73da60f685f548ad5f943211536711c14482f2df64e20d529ca369abcd3a3733"

  url "https://github.com/AstrBotDevs/AstrBot-desktop/releases/download/v4.26.1/AstrBot_4.26.1_macos_arm64.app.tar.gz",
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
