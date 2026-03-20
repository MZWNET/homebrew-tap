cask "astrbot-desktop" do
  version "4.20.1"
  sha256 "10406a32f23b0bf3f671922f86db07b3fe0fe0871c2d61ea8c6cebadf5feeb77"

  url "https://github.com/AstrBotDevs/AstrBot-desktop/releases/download/v4.20.1/AstrBot_4.20.1_macos_arm64.app.tar.gz",
      verified: "github.com/AstrBotDevs/AstrBot-desktop/"
  name "AstrBot Desktop"
  desc "Desktop edition of AstrBot, designed for fast local installation and convenient access to ChatUI and plugins"
  homepage "https://github.com/AstrBotDevs/AstrBot-desktop"

  app "AstrBot.app"
end
