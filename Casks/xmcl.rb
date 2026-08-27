cask "xmcl" do
  version "0.67.2"
  sha256 "60edd5b04aba512a152e8973442b0ad2eff3253f8f9f95c93dd7fb1fe35fb73c"

  url "https://github.com/Voxelum/x-minecraft-launcher/releases/download/v0.67.2/xmcl-0.67.2-arm64.dmg",
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
