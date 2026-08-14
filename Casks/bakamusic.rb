cask "bakamusic" do
  version "1.6.1"
  sha256 "e6d0fb9df8f6a62435d4d491bd7c57e4add95d3b14e6f0c96755464311035393"

  url "https://github.com/Zencok/BakaMusic/releases/download/v1.6.1/BakaMusic-1.6.1-darwin-arm64.dmg",
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
