cask "piliplus" do
  version "2.1.4,5348"
  sha256 "12a6a42930dac490bcafedd0aabeb0ec3b3ab4196d29b93d10e162ba2de2014f"

  url "https://github.com/bggRGjQaUbCoE/PiliPlus/releases/download/2.1.4/PiliPlus_macos_2.1.4%2B5348.dmg"
  name "PiliPlus"
  desc "Third-party BiliBili client developed with Flutter"
  homepage "https://github.com/bggRGjQaUbCoE/PiliPlus"

  app "PiliPlus.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/PiliPlus.app"]
    run "/usr/bin/codesign", args: ["-fs", "-", "{{appdir}}/PiliPlus.app"]
  end
end
