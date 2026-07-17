cask "bakamusic" do
  version "1.3.9"
  sha256 "0afbc4e0953aef645f96d0112385d74b76a6c57c327f7575283eeb6d4b0cab2e"

  url "https://github.com/Zencok/BakaMusic/releases/download/v1.3.9/BakaMusic-1.3.9-darwin-arm64.dmg",
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
