cask "bakamusic" do
  version "1.8.6"
  sha256 "57a3bd4ef6e341cee01095715c0d0fba007eacf4ebe703cf32facef55561233b"

  url "https://github.com/Zencok/BakaMusic/releases/download/v1.8.6/BakaMusic-1.8.6-darwin-arm64.dmg",
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
