cask "astrbot-desktop" do
  version "4.26.6"
  sha256 "4b572075375b364300363c719a6cc2229ddaef4a3f4264d9a05f74d9332ecc6b"

  url "https://github.com/AstrBotDevs/AstrBot-desktop/releases/download/v4.26.6/AstrBot_4.26.6_macos_arm64.app.tar.gz",
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
