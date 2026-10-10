cask "piliplus" do
  version "2.1.6.1,5471"
  sha256 "8f8478ec36cc3189d81c484d3da06880f8017df3111d58d21b5622b6a74e2410"

  url "https://github.com/bggRGjQaUbCoE/PiliPlus/releases/download/#{version.csv.first}/PiliPlus_macos_#{version.csv.first.major_minor_patch}%2B#{version.csv.second}.dmg"
  name "PiliPlus"
  desc "Third-party BiliBili client developed with Flutter"
  homepage "https://github.com/bggRGjQaUbCoE/PiliPlus"

  app "PiliPlus.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/PiliPlus.app"]
    run "/usr/bin/codesign", args: ["-fs", "-", "{{appdir}}/PiliPlus.app"]
  end
end
