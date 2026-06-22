cask "astrbot-desktop" do
  version "4.26.0-beta.12"
  sha256 "35065fa6ca4a7e2a15947568a7010ab0ec4743426240383f24122531b9c6d631"

  url "https://github.com/AstrBotDevs/AstrBot-desktop/releases/download/v4.26.0-beta.12/AstrBot_4.26.0-beta.12_macos_arm64.app.tar.gz",
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
