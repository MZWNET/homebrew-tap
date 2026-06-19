cask "bakamusic" do
  version "1.2.5"
  sha256 "dc50844f847767961db1ede9b86337de1e2e0cfbe29f3b894aa4b3a9eaf44564"

  url "https://github.com/Zencok/BakaMusic/releases/download/v1.2.5/BakaMusic-1.2.5-darwin-arm64.dmg",
      verified: "github.com/Zencok/BakaMusic/"
  name "BakaMusic"
  desc "一个插件化、定制化、无广告的免费桌面音乐播放器。"
  homepage "https://github.com/Zencok/BakaMusic/"

  app "BakaMusic.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "/Applications/BakaMusic.app"]
    system_command "/usr/bin/codesign", args: ["-fs", "-", "/Applications/BakaMusic.app"]
  end
end
