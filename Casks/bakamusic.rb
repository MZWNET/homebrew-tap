cask "bakamusic" do
  version "1.2.9"
  sha256 "85ce46b0128996c5b3c75b2f600504ff0feda020cbd2cf64d156ef5f5da7eb96"

  url "https://github.com/Zencok/BakaMusic/releases/download/v1.2.9/BakaMusic-1.2.9-darwin-arm64.dmg",
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
