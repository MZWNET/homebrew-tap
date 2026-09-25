cask "piliplus" do
  version "2.1.5,5410"
  sha256 "d3bb0ebef916eb3f92b687e5a4041f747f76ab0710125b4ec71ac0331c87280c"

  url "https://github.com/bggRGjQaUbCoE/PiliPlus/releases/download/2.1.5/PiliPlus_macos_2.1.5%2B5410.dmg"
  name "PiliPlus"
  desc "Third-party BiliBili client developed with Flutter"
  homepage "https://github.com/bggRGjQaUbCoE/PiliPlus"

  app "PiliPlus.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/PiliPlus.app"]
    run "/usr/bin/codesign", args: ["-fs", "-", "{{appdir}}/PiliPlus.app"]
  end
end
