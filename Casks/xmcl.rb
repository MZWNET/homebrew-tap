cask "xmcl" do
  version "0.69.0"
  sha256 "5a45b4f51d7a2b41bd7fa644f4f1295142591d180e0ae8fa5ce9bbff171cb183"

  url "https://github.com/Voxelum/x-minecraft-launcher/releases/download/v0.69.0/xmcl-0.69.0-arm64.dmg"
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
