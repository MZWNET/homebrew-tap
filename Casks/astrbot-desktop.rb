cask "astrbot-desktop" do
  version "4.27.2"
  sha256 "61da8a9ea77e816dc8cb38c4c45f4c6d22927493ba6a316da634da32d0b38ad9"

  url "https://github.com/AstrBotDevs/AstrBot-desktop/releases/download/v4.27.2/AstrBot_4.27.2_macos_arm64.app.tar.gz",
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
