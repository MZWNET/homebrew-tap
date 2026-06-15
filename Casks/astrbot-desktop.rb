cask "astrbot-desktop" do
  version "4.26.0-beta.1"
  sha256 "285091f46ad7606a7e664d3742a9f837da455e3e96a88c53901d0339008e0230"

  url "https://github.com/AstrBotDevs/AstrBot-desktop/releases/download/v4.26.0-beta.1/AstrBot_4.26.0-beta.1_macos_arm64.app.tar.gz",
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
