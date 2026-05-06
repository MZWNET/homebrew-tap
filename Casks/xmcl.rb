cask "xmcl" do
  version "0.54.5"
  sha256 "77aabddc532340e910dcc94b28fcf4f46deed0096353425466b282da6b316df1"

  url "https://github.com/Voxelum/x-minecraft-launcher/releases/download/v0.54.5/xmcl-0.54.5-arm64.dmg",
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
