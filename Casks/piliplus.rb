cask "piliplus" do
  version "2.1.0,5109"
  sha256 "a5b8c44f1b601ebab54558a72b042dd23b47d0af5994270b11d96d1373f01b79"

  url "https://github.com/bggRGjQaUbCoE/PiliPlus/releases/download/2.1.0/PiliPlus_macos_2.1.0%2B5109.dmg",
      verified: "github.com/bggRGjQaUbCoE/PiliPlus/"
  name "PiliPlus"
  desc "Third-party BiliBili client developed with Flutter"
  homepage "https://github.com/bggRGjQaUbCoE/PiliPlus"

  app "PiliPlus.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "/Applications/BewlyCat.app"]
    system_command "/usr/bin/codesign", args: ["-fs", "-", "/Applications/BewlyCat.app"]
  end
end
