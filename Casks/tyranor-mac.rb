cask "tyranor-mac" do
  version "0.1.5"
  sha256 "517116a775d9163a9f9fa9aa6e55ab256cc38d3898b684058877fe66b566e239"

  url "https://github.com/Weiss-UltimateSavior/Tyranor-Mac/releases/download/v#{version}/TyranorMac-#{version}.dmg"
  name "Tyranor Mac"
  desc "Native Galgame emulator and library manager supporting multiple engines"
  homepage "https://github.com/Weiss-UltimateSavior/Tyranor-Mac"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "TyranorMac.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/TyranorMac.app"]
    run "/usr/bin/codesign", args: ["-fs", "-", "{{appdir}}/TyranorMac.app"]
  end

  uninstall quit: "com.weiss.tyranormac"

  zap trash: [
    "~/Library/Application Support/GalEmu",
    "~/Library/Caches/com.weiss.tyranormac",
    "~/Library/HTTPStorages/com.weiss.tyranormac",
    "~/Library/Preferences/com.weiss.tyranormac.plist",
    "~/Library/Saved Application State/com.weiss.tyranormac.savedState",
  ]
end
