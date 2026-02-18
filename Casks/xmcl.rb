cask "xmcl" do
    name "X Minecraft Launcher"
    desc "An Open Source Minecraft Launcher with Modern UX. Provides a Disk Efficient way to manage all your Mods!"
    homepage "https://xmcl.app"

    version "0.54.4"
    url "https://github.com/Voxelum/x-minecraft-launcher/releases/download/v0.54.4/xmcl-0.54.4-arm64.dmg"
    sha256 "b2b7a8b219ba7b9980bc6b5ab988fc92305251be78c4ad3ec1947d8f11042fbb"

    livecheck do
        url :url
        strategy :header_match
    end

    app "X Minecraft Launcher.app"

    zap trash: [
        "~/Applications/X Minecraft Launcher.app",
        "~/Library/Application Support/xmcl",
        "~/Library/Preferences/xmcl.plist",
        "~/Library/Saved Application State/xmcl.savedState"
    ]
end