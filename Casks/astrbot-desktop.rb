cask "astrbot-desktop" do
  version "4.23.0-beta.1"
  sha256 "afc291eaf36051f426f29721e7a17b2b078c779a2c14802cd31728c97ebf5e08"

  url "https://github.com/AstrBotDevs/AstrBot-desktop/releases/download/v4.23.0-beta.1/AstrBot_4.23.0-beta.1_macos_arm64.app.tar.gz",
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
