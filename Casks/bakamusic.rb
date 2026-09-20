cask "bakamusic" do
  version "1.9.3"
  sha256 "9bcd9bdb7b27fbfc2bb1e2044f4f27f1ec113e44fcd154a009d42af3ecb1f7ce"

  url "https://github.com/Zencok/BakaMusic/releases/download/v1.9.3/BakaMusic-1.9.3-darwin-arm64.dmg"
  name "BakaMusic"
  desc "一个插件化、定制化、无广告的免费桌面音乐播放器。"
  homepage "https://github.com/Zencok/BakaMusic/"

  app "BakaMusic.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/BakaMusic.app"]
    run "/usr/bin/codesign", args: ["-fs", "-", "{{appdir}}/BakaMusic.app"]
  end
end
