cask "astrbot-desktop" do
  version "4.25.5"
  sha256 "e30c3b6f0f96a3fe6ca0bb682dfb173072dd459a76980928baa0da601b70ef5a"

  url "https://github.com/AstrBotDevs/AstrBot-desktop/releases/download/v4.25.5/AstrBot_4.25.5_macos_arm64.app.tar.gz",
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
