cask "piliplus" do
  version "2.2.0.2,5598"
  sha256 "9d91b5b4eb6af5423da7aedc32fffa31c7f1568f2c6ac0ddb56f2ef7f960a2ca"

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
