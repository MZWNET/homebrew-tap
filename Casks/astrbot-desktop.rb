cask "astrbot-desktop" do
  version "4.24.2"
  sha256 "72ee15eb7f93fd8284a08024930c5123f99f0fbc0e850be45a182e5ed1f4aa01"

  url "https://github.com/AstrBotDevs/AstrBot-desktop/releases/download/v4.24.2/AstrBot_4.24.2_macos_arm64.app.tar.gz",
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
