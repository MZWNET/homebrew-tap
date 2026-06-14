cask "piliplus" do
  version "2.0.9,5051"
  sha256 "be902214356780d364b24023cbc68f3af113bf7cacc79e19ef63abc30f894e8a"

  url "https://github.com/bggRGjQaUbCoE/PiliPlus/releases/download/2.0.9.2/PiliPlus_macos_2.0.9%2B5051.dmg",
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
