cask "astrbot-desktop" do
  version "4.26.0-beta.10"
  sha256 "aa0a4905e4222842797f087466de8cecaf2d1c3733be28db41feaaa19757f726"

  url "https://github.com/AstrBotDevs/AstrBot-desktop/releases/download/v4.26.0-beta.10/AstrBot_4.26.0-beta.10_macos_arm64.app.tar.gz",
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
