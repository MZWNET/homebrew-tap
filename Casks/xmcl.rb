cask "xmcl" do
  version "0.67.1"
  sha256 "71e8971fa1bd2dab6bdd0557595af0d2d099c691a06734a5a6da5bc260a50718"

  url "https://github.com/Voxelum/x-minecraft-launcher/releases/download/v0.67.1/xmcl-0.67.1-arm64.dmg",
      verified: "github.com/Voxelum/x-minecraft-launcher/"
  name "X Minecraft Launcher"
  desc "Open Source Minecraft Launcher with Modern UX. Provides a Disk Efficient way to manage all your Mods!"
  homepage "https://xmcl.app/"

  livecheck do
    url :url
    strategy :header_match
  end

  app "XMCL.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "/Applications/XMCL.app"]
    system_command "/usr/bin/codesign", args: ["-fs", "-", "/Applications/XMCL.app"]
  end

  zap trash: [
    "~/Applications/XMCL.app",
    "~/Library/Application Support/xmcl",
    "~/Library/Preferences/xmcl.plist",
    "~/Library/Saved Application State/xmcl.savedState",
  ]
end
