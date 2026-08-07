cask "astrbot-desktop" do
  version "4.27.2"
  sha256 "10d71bac92f58d9bab5bfabebc5867b6f663b9da7959a5a8fa6d50b59b40e0fb"

  url "https://github.com/AstrBotDevs/AstrBot-desktop/releases/download/v4.27.2/AstrBot_4.27.2_macos_arm64.app.tar.gz",
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
