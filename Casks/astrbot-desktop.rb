cask "astrbot-desktop" do
  version "4.22.0"
  sha256 "7ed1970e669ed8215169b16835f65eaa19c9086e8f708814d7a5f2a22610a82e"

  url "https://github.com/AstrBotDevs/AstrBot-desktop/releases/download/v4.22.0/AstrBot_4.22.0_macos_arm64.app.tar.gz",
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
