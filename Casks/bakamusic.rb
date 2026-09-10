cask "bakamusic" do
  version "1.9.2"
  sha256 "29b8f00806af434aa59a97c13fb190bcb7734305197b19c0ed64c8ad2c9a48c2"

  url "https://github.com/Zencok/BakaMusic/releases/download/v1.9.2/BakaMusic-1.9.2-darwin-arm64.dmg"
  name "BakaMusic"
  desc "一个插件化、定制化、无广告的免费桌面音乐播放器。"
  homepage "https://github.com/Zencok/BakaMusic/"

  app "BakaMusic.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/BakaMusic.app"]
    run "/usr/bin/codesign", args: ["-fs", "-", "{{appdir}}/BakaMusic.app"]
  end
end
