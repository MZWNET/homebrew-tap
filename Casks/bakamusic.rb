cask "bakamusic" do
  version "1.2.4"
  sha256 "4bb3fa340bc9db5cdfc36d83a375b63c2d043e5ad713b80f360d59a9274c7f47"

  url "https://github.com/Zencok/BakaMusic/releases/download/v1.2.4/BakaMusic-1.2.4-darwin-arm64.dmg",
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
