cask "astrbot-desktop" do
  version "4.25.2"
  sha256 "b2115af410666118dfb0914afdcf822f60ee196d10d5711cd33a245ed38f38a5"

  url "https://github.com/AstrBotDevs/AstrBot-desktop/releases/download/v4.25.2/AstrBot_4.25.2_macos_arm64.app.tar.gz",
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
