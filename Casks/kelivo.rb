cask "kelivo" do
  version "1.1.16,60"
  sha256 "12f2300d603931f81405176f2bddc1ea4aef266519c79d77198ea14dcee24f7b"

  url "https://github.com/Chevey339/kelivo/releases/download/v1.1.16/Kelivo_macos_1.1.16%2B60.dmg",
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
