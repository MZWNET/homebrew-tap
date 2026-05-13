cask "astrbot-desktop" do
  version "4.24.4"
  sha256 "9c96b5c032495907a7a7c0a32d871e9da8555df2393c5b9af4b79e255e72d304"

  url "https://github.com/AstrBotDevs/AstrBot-desktop/releases/download/v4.24.4/AstrBot_4.24.4_macos_arm64.app.tar.gz",
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
