cask "astrbot-desktop" do
  version "4.27.5"
  sha256 "39a9a7648ef8d99ec5bc07d4ec0ae21c34866e2cd3fe82f9805d62f8e7bb3c29"

  url "https://github.com/AstrBotDevs/AstrBot-desktop/releases/download/v4.27.5/AstrBot_4.27.5_macos_arm64.app.tar.gz",
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
