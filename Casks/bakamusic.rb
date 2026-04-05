cask "bakamusic" do
  version "1.1.3"
  sha256 "679eca88e739521da1884f896e650d802f9a0029b6b7b5093cc44fdcdca85a02"

  url "https://github.com/Zencok/BakaMusic/releases/download/v1.1.3/BakaMusic-1.1.3-darwin-arm64.dmg",
      verified: "github.com/Zencok/BakaMusic/"
  name "BakaMusic"
  desc "一个插件化、定制化、无广告的免费桌面音乐播放器。"
  homepage "https://github.com/Zencok/BakaMusic/"

  app "BakaMusic.app"
end
