cask "xmcl" do
  version "0.72.0"
  sha256 "e926f14194916d145de10de415effd347b03e81dc86aa2d7d91975beaec07848"

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
