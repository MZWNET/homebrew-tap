cask "pvz-portable" do
  version "0.2.4"
  sha256 "2977c68c1d9227844a9e71e3ef5fc05e99a30645ac0255735f22e9461bf9334d"

  url "https://github.com/MZWNET/pvz_mac_app/releases/download/v0.2.4/PvZ-Portable-0.2.4-arm64.dmg"
  name "PvZ Portable"
  desc "Community reimplementation of Plants vs. Zombies: GOTY Edition"
  homepage "https://github.com/MZWNET/pvz_mac_app"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "PvZ Portable.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/PvZ Portable.app"]
    run "/usr/bin/codesign", args: ["-fs", "-", "{{appdir}}/PvZ Portable.app"]
  end

  uninstall quit: "io.github.wszqkzqk.pvz-portable"

  zap trash: [
    "~/Library/Application Support/io.github.wszqkzqk/PvZPortable",
    "~/Library/Caches/io.github.wszqkzqk.pvz-portable",
    "~/Library/Preferences/io.github.wszqkzqk.pvz-portable.plist",
    "~/Library/Saved Application State/io.github.wszqkzqk.pvz-portable.savedState",
  ]

  caveats <<~EOS
    #{token} contains no game assets. On first launch, pick your own copy of
    Plants vs. Zombies: GOTY Edition (main.pak + properties/, folder or zip);
    it is imported into ~/Library/Application Support/io.github.wszqkzqk/PvZPortable/.
  EOS
end
