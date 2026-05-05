cask "bakamusic" do
  version "1.1.5"
  sha256 "214b5db0cde88948d3c16d0a5d836705abab656ddd7a2a5d5fdbfb66bd0fc436"

  url "https://github.com/Zencok/BakaMusic/releases/download/v1.1.5/BakaMusic-1.1.5-darwin-arm64.dmg",
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
