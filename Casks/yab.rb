cask "yab" do
  version "0.45.1,202610311931"
  sha256 "115acf9e64c1c955266d268881a90282ba6d400288baacd32dca8583b49bcef0"

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
