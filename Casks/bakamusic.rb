cask "bakamusic" do
  version "1.1.9"
  sha256 "61c70e051c50103a2b16dc68460f4b1ac234ec8a96a44ecd14422a6c4ef77522"

  url "https://github.com/Zencok/BakaMusic/releases/download/v1.1.9/BakaMusic-1.1.9-darwin-arm64.dmg",
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
