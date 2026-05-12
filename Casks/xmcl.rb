cask "xmcl" do
  version "0.55.0"
  sha256 "4e94102fdad552e62c653dec3c238370f7ac5735b73ec6e6df9bcba8e443d03a"

  url "https://github.com/Voxelum/x-minecraft-launcher/releases/download/v0.55.0/xmcl-0.55.0-arm64.dmg",
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
