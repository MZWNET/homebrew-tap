cask "bakamusic" do
  version "1.3.0"
  sha256 "83ed0a2f45d719de3097322fb14638f2e36aabde6488159fc8264a006d7c72fe"

  url "https://github.com/Zencok/BakaMusic/releases/download/v1.3.0/BakaMusic-1.3.0-darwin-arm64.dmg",
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
