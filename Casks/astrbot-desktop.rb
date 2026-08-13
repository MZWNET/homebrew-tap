cask "astrbot-desktop" do
  version "4.27.3"
  sha256 "233891b11685c28da2834527658d103e72df16764db9a38f31bd0614bcd78207"

  url "https://github.com/AstrBotDevs/AstrBot-desktop/releases/download/v4.27.3/AstrBot_4.27.3_macos_arm64.app.tar.gz",
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
