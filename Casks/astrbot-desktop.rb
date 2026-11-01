cask "astrbot-desktop" do
  version "4.29.4"
  sha256 "119b90b643d05ebda407dafc01be1075a6f5c411bca6689422399ea01d529a4a"

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
