cask "bakamusic" do
  version "1.3.5"
  sha256 "4260c944092760f09702d98cbbf177b52bc7bc088fe84e7b768035a9227142b7"

  url "https://github.com/Zencok/BakaMusic/releases/download/v1.3.5/BakaMusic-1.3.5-darwin-arm64.dmg",
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
