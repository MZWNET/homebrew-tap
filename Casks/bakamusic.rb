cask "bakamusic" do
  version "1.8.4"
  sha256 "38ffd6710190c01d4b829a568e2d4cb8e498b3df3bce2172ba8c39b119e57bd3"

  url "https://github.com/Zencok/BakaMusic/releases/download/v1.8.4/BakaMusic-1.8.4-darwin-arm64.dmg",
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
