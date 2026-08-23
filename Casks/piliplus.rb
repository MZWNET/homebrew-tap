cask "piliplus" do
  version "2.1.1,5231"
  sha256 "a0bd3e2af8d77defc447aa4f3ac6151b7a05b92bf061a3afa69fbdf52223cb16"

  url "https://github.com/bggRGjQaUbCoE/PiliPlus/releases/download/2.1.1.2/PiliPlus_macos_2.1.1%2B5231.dmg",
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
