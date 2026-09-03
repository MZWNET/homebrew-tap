cask "bakamusic" do
  version "1.9.0"
  sha256 "dd628ea54b566fe60aedc70c541c2a3d0a600e6452f2c46e446be0a406e24d96"

  url "https://github.com/Zencok/BakaMusic/releases/download/v1.9.0/BakaMusic-1.9.0-darwin-arm64.dmg",
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
