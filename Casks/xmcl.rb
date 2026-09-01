cask "xmcl" do
  version "0.68.1"
  sha256 "3b98902f490eb2b4ea32d3807126f5a77f95fe2fde74eba1e3655d217add944d"

  url "https://github.com/Voxelum/x-minecraft-launcher/releases/download/v0.68.1/xmcl-0.68.1-arm64.dmg",
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
