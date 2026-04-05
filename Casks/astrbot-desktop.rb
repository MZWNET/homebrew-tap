cask "astrbot-desktop" do
  version "4.22.3"
  sha256 "3ce1782668c1d130e653f326a294089c793a0d922a8d168aefce229f7ffa5810"

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
