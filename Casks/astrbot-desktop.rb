cask "astrbot-desktop" do
  version "4.29.1"
  sha256 "73e44911537f73b0ec0f9f2710e9c715da4bda16ee31b47e714db5fc69f29e9c"

  url "https://github.com/AstrBotDevs/AstrBot-desktop/releases/download/v#{version}/AstrBot_#{version}_macos_arm64.app.tar.gz"
  name "AstrBot Desktop"
  desc "Desktop edition of AstrBot, designed for fast local installation and convenient access to ChatUI and plugins"
  homepage "https://github.com/AstrBotDevs/AstrBot-desktop"

  app "AstrBot.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/AstrBot.app"]
    run "/usr/bin/codesign", args: ["-fs", "-", "{{appdir}}/AstrBot.app"]
  end
end
