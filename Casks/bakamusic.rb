cask "bakamusic" do
  version "1.7.1"
  sha256 "c937a4a826cf1a7d7e26307ac38809e0bc7b6f4621e6554cd9f6799b9cf2b704"

  url "https://github.com/Zencok/BakaMusic/releases/download/v1.7.1/BakaMusic-1.7.1-darwin-arm64.dmg",
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
