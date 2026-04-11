cask "piliplus" do
  version "2.0.3,4841"
  sha256 "c12c54dcbc6af9f118b0f7929a4bf4a048ca78b5b667641d89aa8d837a5e290a"

  url "https://github.com/bggRGjQaUbCoE/PiliPlus/releases/download/2.0.3.2/PiliPlus_macos_2.0.3%2B4841.dmg",
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
