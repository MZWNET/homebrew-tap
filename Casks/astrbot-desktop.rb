cask "astrbot-desktop" do
  version "4.25.4"
  sha256 "a84e6bb93c4af4de7b66b6ec09dd0d998033258119921791e2ec619a9130dead"

  url "https://github.com/AstrBotDevs/AstrBot-desktop/releases/download/v4.25.4/AstrBot_4.25.4_macos_arm64.app.tar.gz",
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
