cask "bakamusic" do
  version "1.8.5"
  sha256 "c1814623926ef7355778c247b6de7eb2008ac4867f5d24411a47f7f7eeaffdd4"

  url "https://github.com/Zencok/BakaMusic/releases/download/v1.8.5/BakaMusic-1.8.5-darwin-arm64.dmg",
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
