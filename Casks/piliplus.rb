cask "piliplus" do
  version "2.0.8,5014"
  sha256 "f4251bb42e7af4ff6cfda7df2a82ff0552175cc588872e91e9ff46fc037c2bfc"

  url "https://github.com/bggRGjQaUbCoE/PiliPlus/releases/download/2.0.8/PiliPlus_macos_2.0.8%2B5014.dmg",
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
