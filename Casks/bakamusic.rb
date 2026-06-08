cask "bakamusic" do
  version "1.2.1"
  sha256 "834d13bf12df6d3f39b51302aaa16b60945578d6c1cea4b4f82c701488762a33"

  url "https://github.com/Zencok/BakaMusic/releases/download/v1.2.1/BakaMusic-1.2.1-darwin-arm64.dmg",
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
