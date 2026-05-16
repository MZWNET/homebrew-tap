cask "astrbot-desktop" do
  version "4.25.0"
  sha256 "c8ca2bf917e8ef4a9cbd7b2019803102fa49ec06fe7b64efdf28f075390ab4ef"

  url "https://github.com/AstrBotDevs/AstrBot-desktop/releases/download/v4.25.0/AstrBot_4.25.0_macos_arm64.app.tar.gz",
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
