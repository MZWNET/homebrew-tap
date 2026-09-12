cask "astrbot-desktop" do
  version "4.28.0"
  sha256 "9f25d5bc3fa71e369dde9b52d285eeb26f15843a07b05856935ad7e134d4e1ee"

  url "https://github.com/AstrBotDevs/AstrBot-desktop/releases/download/v4.28.0/AstrBot_4.28.0_macos_arm64.app.tar.gz"
  name "AstrBot Desktop"
  desc "Desktop edition of AstrBot, designed for fast local installation and convenient access to ChatUI and plugins"
  homepage "https://github.com/AstrBotDevs/AstrBot-desktop"

  app "AstrBot.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/AstrBot.app"]
    run "/usr/bin/codesign", args: ["-fs", "-", "{{appdir}}/AstrBot.app"]
  end
end
