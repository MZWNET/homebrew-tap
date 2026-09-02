cask "bakamusic" do
  version "1.8.8"
  sha256 "2faf7a82328c3027e863e643dc92a695517d22ad7186fa5c008d1cafb5dd79ea"

  url "https://github.com/Zencok/BakaMusic/releases/download/v1.8.8/BakaMusic-1.8.8-darwin-arm64.dmg",
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
