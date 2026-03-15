cask "piliplus" do
  version "2.0.1,4775"
  sha256 "b5cb1bd7e4bc406dfbfd36c2f3b641760f63982e85600bef33a9f2cce60db441"

  url "https://github.com/bggRGjQaUbCoE/PiliPlus/releases/download/2.0.1.1/PiliPlus_macos_2.0.1%2B4775.dmg",
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
