cask "bakamusic" do
  version "1.9.1"
  sha256 "bc66c7bcc9529a179bddd17d8862106653e7c8be7165f3026210651b0b74024d"

  url "https://github.com/Zencok/BakaMusic/releases/download/v1.9.1/BakaMusic-1.9.1-darwin-arm64.dmg"
  name "BakaMusic"
  desc "一个插件化、定制化、无广告的免费桌面音乐播放器。"
  homepage "https://github.com/Zencok/BakaMusic/"

  app "BakaMusic.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/BakaMusic.app"]
    run "/usr/bin/codesign", args: ["-fs", "-", "{{appdir}}/BakaMusic.app"]
  end
end
