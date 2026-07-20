cask "bakamusic" do
  version "1.5.0"
  sha256 "780e8bd59d3d322de0eddcb5be594bec8fc0ce5f1bf158252e2414989c2bb391"

  url "https://github.com/Zencok/BakaMusic/releases/download/v1.5.0/BakaMusic-1.5.0-darwin-arm64.dmg",
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
