cask "piliplus" do
  version "2.1.2,5255"
  sha256 "ecb570e815206fbdc264c8f7d63823962dc8222ac921c052e5ac0e9f1f24081c"

  url "https://github.com/bggRGjQaUbCoE/PiliPlus/releases/download/2.1.2.1/PiliPlus_macos_2.1.2%2B5255.dmg",
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
