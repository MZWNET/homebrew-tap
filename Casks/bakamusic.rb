cask "bakamusic" do
  version "1.2.2"
  sha256 "4673b3a381c00e0a7f9dba501f2665bed9a5d89954dff497fc3fe92007f1b611"

  url "https://github.com/Zencok/BakaMusic/releases/download/v1.2.2/BakaMusic-1.2.2-darwin-arm64.dmg",
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
