cask "astrbot-desktop" do
  version "4.26.8"
  sha256 "41cab80a8f35c63f3b501ec6a4ff853d3c5fde55b7448b62b5a302fca70cfd79"

  url "https://github.com/AstrBotDevs/AstrBot-desktop/releases/download/v4.26.8/AstrBot_4.26.8_macos_arm64.app.tar.gz",
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
