cask "yab" do
  version "0.50.0,202611180909"
  sha256 "f6488e9db9e16bcfeee3bc9ce0c6d80aa08ea5849401d7de668651c72a15968f"

  url "https://8hauzhgbhxiipn9a.public.blob.vercel-storage.com/releases/yab-#{version.csv.first}-#{version.csv.second}.zip"
  name "Yab"
  desc "WebKit based web browser with AI agents"
  homepage "https://yetanotherbrowser.com/"

  livecheck do
    url "https://yetanotherbrowser.com/appcast.json"
    strategy :json do |json|
      "#{json["version"]},#{json["build"]}"
    end
  end

  auto_updates true
  depends_on macos: :sequoia

  app "yab.app"

  uninstall launchctl: "dev.serafim.fast.updater",
            quit:      "dev.serafim.fast"

  zap trash: [
    "~/.local/bin/yab",
    "~/Library/Application Support/Yab",
    "~/Library/Caches/dev.serafim.fast",
    "~/Library/HTTPStorages/dev.serafim.fast",
    "~/Library/HTTPStorages/dev.serafim.fast.binarycookies",
    "~/Library/Preferences/dev.serafim.fast.plist",
    "~/Library/WebKit/dev.serafim.fast",
  ]
end
