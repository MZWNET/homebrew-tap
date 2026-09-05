cask "piliplus" do
  version "2.1.3,5315"
  sha256 "afe1a986cc569ad2c4fce1b17b6d90bd573b412dacfdd3ab9efc1cc6720b0c29"

  url "https://github.com/bggRGjQaUbCoE/PiliPlus/releases/download/2.1.3.1/PiliPlus_macos_2.1.3%2B5315.dmg"
  name "PiliPlus"
  desc "Third-party BiliBili client developed with Flutter"
  homepage "https://github.com/bggRGjQaUbCoE/PiliPlus"

  app "PiliPlus.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/PiliPlus.app"]
    run "/usr/bin/codesign", args: ["-fs", "-", "{{appdir}}/PiliPlus.app"]
  end
end
