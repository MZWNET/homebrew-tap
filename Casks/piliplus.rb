cask "piliplus" do
  version "2.0.7,4940"
  sha256 "636d0356724d7de2fd03f2456547e1b1eec99f9115e77fa4e42f93bc61ae159f"

  url "https://github.com/bggRGjQaUbCoE/PiliPlus/releases/download/2.0.7/PiliPlus_macos_2.0.7%2B4940.dmg",
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
