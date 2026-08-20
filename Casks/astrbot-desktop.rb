cask "astrbot-desktop" do
  version "4.27.4"
  sha256 "60390614b2aed93aebb27d8be4639fdd34f3ad33250357edc7ec0a2425f71381"

  url "https://github.com/AstrBotDevs/AstrBot-desktop/releases/download/v4.27.4/AstrBot_4.27.4_macos_arm64.app.tar.gz",
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
