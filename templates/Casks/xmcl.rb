cask "xmcl" do
    name "X Minecraft Launcher"
    desc "An Open Source Minecraft Launcher with Modern UX. Provides a Disk Efficient way to manage all your Mods!"
    homepage "https://xmcl.app"

    version "#{{ver}}"
    url "#{{url}}"
    sha256 "#{{sha256}}"

    livecheck do
        url :url
        strategy :header_match
    end

    app "X Minecraft Launcher.app"

    postflight do
        system_command "/usr/bin/xattr", args: ["-cr", "/Applications/X Minecraft Launcher.app"]
        system_command "/usr/bin/codesign", args: ["-fs", "-", "/Applications/X Minecraft Launcher.app"]
    end

    zap trash: [
        "~/Applications/X Minecraft Launcher.app",
        "~/Library/Application Support/xmcl",
        "~/Library/Preferences/xmcl.plist",
        "~/Library/Saved Application State/xmcl.savedState"
    ]
end