cask "kelivo" do
  version "1.2.3,67"
  sha256 "d979e57d4bec37b9fcc8fc0b3b59a2eb27d2647a707b04414a979466723029ac"

  url "https://github.com/Chevey339/kelivo/releases/download/v1.2.3/Kelivo_macos_1.2.3%2B67.dmg",
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
