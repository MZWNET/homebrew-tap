cask "kelivo" do
  version "1.1.12,30"
  sha256 "9c8620acbc4a108889e034e9850782627790705c8589be8b0f664e59c7576ef2"

  url "https://github.com/Chevey339/kelivo/releases/download/v1.1.12/Kelivo_macos_1.1.12%2B30.dmg",
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
