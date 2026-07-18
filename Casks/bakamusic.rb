cask "bakamusic" do
  version "1.4.0"
  sha256 "56802fc1a362e9e778ee72380282557c040ce52c4fe1ae5e27f58076fd5a2ae0"

  url "https://github.com/Zencok/BakaMusic/releases/download/v1.4.0/BakaMusic-1.4.0-darwin-arm64.dmg",
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
