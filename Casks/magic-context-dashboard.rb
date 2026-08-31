cask "magic-context-dashboard" do
  version "0.14.0"
  sha256 "75baedd5609d961ceb720dd7d30bd0d8892ddb4534eb2982cd8dfbf332e8f445"

  url "https://github.com/cortexkit/magic-context/releases/download/dashboard-v#{version}/magic-context-dashboard-darwin-arm64.dmg",
      verified: "github.com/cortexkit/magic-context/"
  name "Magic Context Dashboard"
  desc "Browse Magic Context memories, sessions, cache diagnostics and dream tasks"
  homepage "https://github.com/cortexkit/magic-context"

  livecheck do
    url :url
    regex(/^dashboard[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  auto_updates true
  depends_on macos: :catalina

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
