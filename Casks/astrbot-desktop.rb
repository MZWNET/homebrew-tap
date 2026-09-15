cask "astrbot-desktop" do
  version "4.28.1"
  sha256 "4082caac69b85cbbe1cc8dca45ab9f889f97dd5e11540618ee1fa171324f123b"

  url "https://github.com/AstrBotDevs/AstrBot-desktop/releases/download/v4.28.1/AstrBot_4.28.1_macos_arm64.app.tar.gz"
  name "AstrBot Desktop"
  desc "Desktop edition of AstrBot, designed for fast local installation and convenient access to ChatUI and plugins"
  homepage "https://github.com/AstrBotDevs/AstrBot-desktop"

  app "AstrBot.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/AstrBot.app"]
    run "/usr/bin/codesign", args: ["-fs", "-", "{{appdir}}/AstrBot.app"]
  end
end
