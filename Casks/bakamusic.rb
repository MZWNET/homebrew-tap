cask "bakamusic" do
  version "1.9.5"
  sha256 "534e79da1a6e558c01fc11362b96f15e853ccf589e2b5b4c0e247c615b0f13bb"

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
