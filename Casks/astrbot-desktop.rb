cask "astrbot-desktop" do
  version "4.25.5"
  sha256 "60991ecaf0860ed450da6ff5147b2b661ed240848a7221bd6567d4494583259f"

  url "https://github.com/AstrBotDevs/AstrBot-desktop/releases/download/v4.25.5/AstrBot_4.25.5_macos_arm64.app.tar.gz",
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
