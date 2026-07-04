cask "astrbot-desktop" do
  version "4.26.4"
  sha256 "1cae477724982847348850280f911dba6f38321487c5cf4b3a7e569062fb8260"

  url "https://github.com/AstrBotDevs/AstrBot-desktop/releases/download/v4.26.4/AstrBot_4.26.4_macos_arm64.app.tar.gz",
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
