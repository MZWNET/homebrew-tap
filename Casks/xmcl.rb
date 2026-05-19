cask "xmcl" do
  version "0.56.3"
  sha256 "b42d0cb83e9bde0efa6ee92d3071560738aacb69a30a23eb717f0bb2d9e70c09"

  url "https://github.com/Voxelum/x-minecraft-launcher/releases/download/v0.56.3/xmcl-0.56.3-arm64.dmg",
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
