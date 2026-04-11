cask "bakamusic" do
  version "1.1.4"
  sha256 "7506ddda66dee4908d86eb0444de2e4cd18c3f4cd7f24a344aabdf7e486c8c8f"

  url "https://github.com/Zencok/BakaMusic/releases/download/v1.1.4/BakaMusic-1.1.4-darwin-arm64.dmg",
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
