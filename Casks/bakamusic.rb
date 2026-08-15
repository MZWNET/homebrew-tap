cask "bakamusic" do
  version "1.7.0"
  sha256 "cef68700e71761c3f447a746b32510522d94d41dc511e3b1a848b3d339cdcf3f"

  url "https://github.com/Zencok/BakaMusic/releases/download/v1.7.0/BakaMusic-1.7.0-darwin-arm64.dmg",
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
