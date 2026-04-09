cask "piliplus" do
  version "2.0.3,4836"
  sha256 "b049f98e6d50fc0872911398040f0ac244c1218571ea20da6725d48c6827f528"

  url "https://github.com/bggRGjQaUbCoE/PiliPlus/releases/download/2.0.3.1/PiliPlus_macos_2.0.3%2B4836.dmg",
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
