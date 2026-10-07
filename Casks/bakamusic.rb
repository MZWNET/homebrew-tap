cask "bakamusic" do
  version "1.9.4"
  sha256 "5fead6d83177ad8fe104f860a15f26662b2552f29ab5ae8b3e2651a977421612"

  url "https://github.com/Zencok/BakaMusic/releases/download/v#{version}/BakaMusic-#{version}-darwin-arm64.dmg"
  name "BakaMusic"
  desc "一个插件化、定制化、无广告的免费桌面音乐播放器。"
  homepage "https://github.com/Zencok/BakaMusic/"

  app "BakaMusic.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/BakaMusic.app"]
    run "/usr/bin/codesign", args: ["-fs", "-", "{{appdir}}/BakaMusic.app"]
  end
end
