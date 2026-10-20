cask "magic-context-dashboard" do
  version "0.20.6"
  sha256 "2a6e78f05dc6fdd889e70323c4d36c6bc849a34e7d2a1cd7657850e2eef8b7f2"

  url "https://github.com/cortexkit/magic-context/releases/download/dashboard-v#{version}/magic-context-dashboard-darwin-arm64.dmg"
  name "Magic Context Dashboard"
  desc "Browse Magic Context memories, sessions, cache diagnostics and dream tasks"
  homepage "https://github.com/cortexkit/magic-context"

  livecheck do
    url :url
    regex(/^dashboard[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  auto_updates true
  depends_on :macos

  app "Magic Context Dashboard.app"

  uninstall quit: "com.cortexkit.magic-context-dashboard"

  zap trash: [
    "~/Library/Caches/com.cortexkit.magic-context-dashboard",
    "~/Library/HTTPStorages/com.cortexkit.magic-context-dashboard",
    "~/Library/Preferences/com.cortexkit.magic-context-dashboard.plist",
    "~/Library/Saved Application State/com.cortexkit.magic-context-dashboard.savedState",
    "~/Library/WebKit/com.cortexkit.magic-context-dashboard",
  ]
end
