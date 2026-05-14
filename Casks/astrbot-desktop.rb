cask "astrbot-desktop" do
  version "4.24.5"
  sha256 "79e7381cd792fedb8dada89bf93e334ec1a1bcb9daf8ec8d7b5516ac2cd7d062"

  url "https://github.com/AstrBotDevs/AstrBot-desktop/releases/download/v4.24.5/AstrBot_4.24.5_macos_arm64.app.tar.gz",
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
