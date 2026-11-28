cask "xmcl" do
  version "0.74.0"
  sha256 "5e9ddb268c0e0d5f099946483e7f592ed4803c31a043840667fd39925f47549f"

  url "https://github.com/Voxelum/x-minecraft-launcher/releases/download/v#{version}/xmcl-#{version}-arm64.dmg"
  name "X Minecraft Launcher"
  desc "Open Source Minecraft Launcher with Modern UX. Provides a Disk Efficient way to manage all your Mods!"
  homepage "https://xmcl.app/"

  livecheck do
    url :url
    strategy :header_match
  end

  app "XMCL.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/XMCL.app"]
    run "/usr/bin/codesign", args: ["-fs", "-", "{{appdir}}/XMCL.app"]
  end

  zap trash: [
    "~/Applications/XMCL.app",
    "~/Library/Application Support/xmcl",
    "~/Library/Preferences/xmcl.plist",
    "~/Library/Saved Application State/xmcl.savedState",
  ]
end
