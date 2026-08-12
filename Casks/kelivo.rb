cask "kelivo" do
  version "1.2.0,62"
  sha256 "7afcfcf14774e1eaf0cd3046f0d451b1873f995e34badfb830f0edd0b2391bf2"

  url "https://github.com/Chevey339/kelivo/releases/download/v1.2.0/Kelivo_macos_1.2.0%2B62.dmg",
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
