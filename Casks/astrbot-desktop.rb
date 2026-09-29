cask "astrbot-desktop" do
  version "4.28.2"
  sha256 "364b485f0c5a0db8eea040ad8bf0f1a793cdabc15bd9207fe36267697f688c21"

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
