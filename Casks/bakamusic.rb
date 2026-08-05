cask "bakamusic" do
  version "1.5.9"
  sha256 "16a6e7059811c015823f7730cc14e9cfa7240965a248007f23cf16c3c802e83f"

  url "https://github.com/Zencok/BakaMusic/releases/download/v1.5.9/BakaMusic-1.5.9-darwin-arm64.dmg",
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
