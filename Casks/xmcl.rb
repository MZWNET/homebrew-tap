cask "xmcl" do
  version "0.59.1"
  sha256 "608fff20d35efcdbc2865898fbe6801ee973ab61c3c0c01561fbe14bfe277940"

  url "https://github.com/Voxelum/x-minecraft-launcher/releases/download/v0.59.1/xmcl-0.59.1-arm64.dmg",
      verified: "github.com/Voxelum/x-minecraft-launcher/"
  name "X Minecraft Launcher"
  desc "Open Source Minecraft Launcher with Modern UX. Provides a Disk Efficient way to manage all your Mods!"
  homepage "https://xmcl.app/"

  livecheck do
    url :url
    strategy :header_match
  end

  app "X Minecraft Launcher.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "/Applications/X Minecraft Launcher.app"]
    system_command "/usr/bin/codesign", args: ["-fs", "-", "/Applications/X Minecraft Launcher.app"]
  end

  zap trash: [
    "~/Applications/X Minecraft Launcher.app",
    "~/Library/Application Support/xmcl",
    "~/Library/Preferences/xmcl.plist",
    "~/Library/Saved Application State/xmcl.savedState",
  ]
end
