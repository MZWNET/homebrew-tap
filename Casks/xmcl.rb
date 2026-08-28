cask "xmcl" do
  version "0.67.3"
  sha256 "eb5bab38df9cbecebd151bd878475de8aefb6e7a6f59ca359e33b2ec424137d6"

  url "https://github.com/Voxelum/x-minecraft-launcher/releases/download/v0.67.3/xmcl-0.67.3-arm64.dmg",
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
