cask "bakamusic" do
  version "1.3.7"
  sha256 "5812e5c4aaed6bbbca59c4580ee9df404f6273ac27e48911722f83581f9195b9"

  url "https://github.com/Zencok/BakaMusic/releases/download/v1.3.7/BakaMusic-1.3.7-darwin-arm64.dmg",
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
