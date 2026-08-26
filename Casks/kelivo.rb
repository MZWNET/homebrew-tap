cask "kelivo" do
  version "1.2.4,68"
  sha256 "45faee14871ecfa2d8542b7bbaac11ec65a402ce0427ebb06944eea1f0eeb8b7"

  url "https://github.com/Chevey339/kelivo/releases/download/v1.2.4/Kelivo_macos_1.2.4%2B68.dmg",
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
