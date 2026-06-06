cask "astrbot-desktop" do
  version "4.25.3"
  sha256 "47eb71e079859621dbc07f52633cc341576b14fd442b893f933c607e77112864"

  url "https://github.com/AstrBotDevs/AstrBot-desktop/releases/download/v4.25.3/AstrBot_4.25.3_macos_arm64.app.tar.gz",
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
