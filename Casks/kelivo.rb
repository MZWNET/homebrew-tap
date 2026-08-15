cask "kelivo" do
  version "1.2.2,66"
  sha256 "b6d5e50f6d8db2db3b2c7d5e11e258f294fbdac6f062cf03008b3cdcb4b2e5e8"

  url "https://github.com/Chevey339/kelivo/releases/download/v1.2.2/Kelivo_macos_1.2.2%2B66.dmg",
      verified: "github.com/Chevey339/kelivo"
  name "Kelivo"
  desc "A Flutter LLM Chat Client. Support Mobile & Desktop."
  homepage "https://kelivo.psycheas.top/"

  app "kelivo.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "/Applications/BewlyCat.app"]
    system_command "/usr/bin/codesign", args: ["-fs", "-", "/Applications/BewlyCat.app"]
  end
end
