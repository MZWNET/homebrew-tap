cask "bakamusic" do
  version "1.5.6"
  sha256 "cbd9eae8d33623c6641d41b684769811f502a032daff6c21f41a208903876da0"

  url "https://github.com/Zencok/BakaMusic/releases/download/v1.5.6/BakaMusic-1.5.6-darwin-arm64.dmg",
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
