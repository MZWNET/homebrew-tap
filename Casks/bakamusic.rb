cask "bakamusic" do
  version "1.8.7"
  sha256 "ec5683829e26d09b9eb13a382d8cba2626f93102896e4d579c715cbfa45e7c37"

  url "https://github.com/Zencok/BakaMusic/releases/download/v1.8.7/BakaMusic-1.8.7-darwin-arm64.dmg",
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
