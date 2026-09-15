cask "xmcl" do
  version "0.70.0"
  sha256 "f91fbafcc6f64c87640913a6df4b99a08dca28015cd2bd317186e0a922fb5964"

  url "https://github.com/Voxelum/x-minecraft-launcher/releases/download/v0.70.0/xmcl-0.70.0-arm64.dmg"
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
