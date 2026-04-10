cask "astrbot-desktop" do
  version "4.22.3"
  sha256 "82449bcc0f9c827abd19e47b2eac241ac11115d6353803e202e981bf76081526"

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
