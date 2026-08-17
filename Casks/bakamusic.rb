cask "bakamusic" do
  version "1.8.1"
  sha256 "3b091494aa0e972ee6cbc83b167b8bb63153ef11aeceac717c01f8a34659e18a"

  url "https://github.com/Zencok/BakaMusic/releases/download/v1.8.1/BakaMusic-1.8.1-darwin-arm64.dmg",
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
