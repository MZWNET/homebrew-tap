cask "astrbot-desktop" do
  version "4.22.1"
  sha256 "e2972c5fdf3abdbd023aa39461e171fb076d542295dc04ecc7776435c65394a8"

  url "https://github.com/AstrBotDevs/AstrBot-desktop/releases/download/v4.22.1/AstrBot_4.22.1_macos_arm64.app.tar.gz",
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
