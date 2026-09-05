cask "bakamusic" do
  version "1.9.1"
  sha256 "bc66c7bcc9529a179bddd17d8862106653e7c8be7165f3026210651b0b74024d"

  url "https://github.com/Zencok/BakaMusic/releases/download/v1.9.1/BakaMusic-1.9.1-darwin-arm64.dmg",
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
