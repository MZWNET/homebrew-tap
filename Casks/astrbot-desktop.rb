cask "astrbot-desktop" do
  version "4.26.2"
  sha256 "41297317062d8498e2f63555c67da92425b9cd662ffb623fc40e46fa44bea638"

  url "https://github.com/AstrBotDevs/AstrBot-desktop/releases/download/v4.26.2/AstrBot_4.26.2_macos_arm64.app.tar.gz",
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
