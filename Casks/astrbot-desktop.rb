cask "astrbot-desktop" do
  version "4.23.6"
  sha256 "9f8f3856d16c73533ea30cac72529275859477dc37eb4a7ef4ee346aa9330b22"

  url "https://github.com/AstrBotDevs/AstrBot-desktop/releases/download/v4.23.6/AstrBot_4.23.6_macos_arm64.app.tar.gz",
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
