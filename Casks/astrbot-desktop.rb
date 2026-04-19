cask "astrbot-desktop" do
  version "4.23.2"
  sha256 "add68f70cea054c091e3ab0feae853f9b2f58ed40fbc10c0a04c555ba4afa6e8"

  url "https://github.com/AstrBotDevs/AstrBot-desktop/releases/download/v4.23.2/AstrBot_4.23.2_macos_arm64.app.tar.gz",
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
