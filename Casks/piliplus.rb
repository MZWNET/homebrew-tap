cask "piliplus" do
  version "2.0.5,4886"
  sha256 "0fe17d6b87554cf4b526c9813c61f5a06aa1cd3d9de9ac2667da65859426de9c"

  url "https://github.com/bggRGjQaUbCoE/PiliPlus/releases/download/2.0.5/PiliPlus_macos_2.0.5%2B4886.dmg",
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
