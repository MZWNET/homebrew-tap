cask "piliplus" do
  version "2.0.4,4848"
  sha256 "03fdbbf9e3630ae589e061a54e1e1ef9f5369a95cc93d7ee9b9c458d8ec20d5b"

  url "https://github.com/bggRGjQaUbCoE/PiliPlus/releases/download/2.0.4/PiliPlus_macos_2.0.4%2B4848.dmg",
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
