cask "astrbot-desktop" do
  version "4.23.1"
  sha256 "21908041deb339a1c86fed635d9344ca40202c4ef7679b5d4518a1302cd71b4a"

  url "https://github.com/AstrBotDevs/AstrBot-desktop/releases/download/v4.23.1/AstrBot_4.23.1_macos_arm64.app.tar.gz",
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
