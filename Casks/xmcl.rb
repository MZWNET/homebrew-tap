cask "xmcl" do
  version "0.71.0"
  sha256 "edc792a0a1b4e1d3dcead828161b4b63616de045a214b33daa94bdfc3d925a29"

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
