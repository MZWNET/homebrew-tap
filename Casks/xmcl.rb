cask "xmcl" do
  version "0.68.0"
  sha256 "642d3a7e637af51a4137a9b3e6535a5e768b565fdcc477b65cfd7aad6199ba4c"

  url "https://github.com/Voxelum/x-minecraft-launcher/releases/download/v0.68.0/xmcl-0.68.0-arm64.dmg",
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
