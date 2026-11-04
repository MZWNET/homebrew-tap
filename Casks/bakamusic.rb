cask "bakamusic" do
  version "1.9.6"
  sha256 "244f745976be551ec86ebfc3f4cf76de51493530ecedbc535e95ef1e866332dd"

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
