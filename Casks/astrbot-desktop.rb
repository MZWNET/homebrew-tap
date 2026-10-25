cask "astrbot-desktop" do
  version "4.29.3"
  sha256 "ee3d319e4c33c85edc00aa6f2cd43fad684df45fe178409136dd0587f4538068"

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
