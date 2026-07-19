cask "astrbot-desktop" do
  version "4.26.7"
  sha256 "7bdf4291c412621c795d7cd8ffcf86539ecd4d75a170093e6f55a4ab779dea67"

  url "https://github.com/AstrBotDevs/AstrBot-desktop/releases/download/v4.26.7/AstrBot_4.26.7_macos_arm64.app.tar.gz",
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
