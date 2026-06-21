cask "astrbot-desktop" do
  version "4.26.0-beta.11"
  sha256 "d68b3a479970199dfa4cafd42e873e9fc0ed2b1ccfcd3e0e15a5c2ae0bcd1f39"

  url "https://github.com/AstrBotDevs/AstrBot-desktop/releases/download/v4.26.0-beta.11/AstrBot_4.26.0-beta.11_macos_arm64.app.tar.gz",
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
