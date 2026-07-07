cask "bakamusic" do
  version "1.2.8"
  sha256 "d64f8648b8ee51e1efb1f3b884bdc1ba9bf41144f875f93e49440e5c8417232b"

  url "https://github.com/Zencok/BakaMusic/releases/download/v1.2.8/BakaMusic-1.2.8-darwin-arm64.dmg",
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
