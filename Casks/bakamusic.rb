cask "bakamusic" do
  version "1.5.7"
  sha256 "068056d66ce3226ac7a3d91d1b3b6a52e47d59dc4ecd2c035818bd0ec8b044c1"

  url "https://github.com/Zencok/BakaMusic/releases/download/v1.5.7/BakaMusic-1.5.7-darwin-arm64.dmg",
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
