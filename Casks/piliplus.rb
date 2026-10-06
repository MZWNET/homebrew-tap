cask "piliplus" do
  version "2.1.6,5453"
  sha256 "db5f46836e71dbab03fb68c84710a0c6166ad9d0241188914813dc44252bba90"

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
