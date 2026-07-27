cask "bakamusic" do
  version "1.5.8"
  sha256 "cb5ff7de354a42a10139dd634622d70a0ed5d15f77410c5c1874865926318266"

  url "https://github.com/Zencok/BakaMusic/releases/download/v1.5.8/BakaMusic-1.5.8-darwin-arm64.dmg",
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
