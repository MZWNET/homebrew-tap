cask "astrbot-desktop" do
  version "4.23.0-beta.1"
  sha256 "c87f0e9b330df7fcd434b9e1da8d83f97db02194b9e925d75f922fcc64407fd9"

  url "https://github.com/AstrBotDevs/AstrBot-desktop/releases/download/v4.23.0-beta.1/AstrBot_4.23.0-beta.1_macos_arm64.app.tar.gz",
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
