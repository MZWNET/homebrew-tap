cask "astrbot-desktop" do
  version "4.22.3"
  sha256 "463497d6cd6802d8bf79a3bf929e4f673aa50b809c63af4933ad0b4980fef541"

  url "https://github.com/AstrBotDevs/AstrBot-desktop/releases/download/v4.22.3/AstrBot_4.22.3_macos_arm64.app.tar.gz",
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
