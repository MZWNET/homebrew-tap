cask "astrbot-desktop" do
  version "4.26.5"
  sha256 "26c1c08363ac1aa993ff7117736b82a0521e0fd0a72b2086f8a26eeae88c4a3c"

  url "https://github.com/AstrBotDevs/AstrBot-desktop/releases/download/v4.26.5/AstrBot_4.26.5_macos_arm64.app.tar.gz",
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
