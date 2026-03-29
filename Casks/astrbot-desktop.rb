cask "astrbot-desktop" do
  version "4.22.2"
  sha256 "c981b982b0254d014544d0fbd3143be79d05dde7daa9d45e07ffbf0af75d4dcb"

  url "https://github.com/AstrBotDevs/AstrBot-desktop/releases/download/v4.22.2/AstrBot_4.22.2_macos_arm64.app.tar.gz",
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
