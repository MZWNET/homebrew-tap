cask "kelivo" do
  version "1.1.11,29"
  sha256 "7cc4feca636e9dc607cd7c5803d02ba047e19cf5fbb4ee51a7beb926c210cd7a"

  url "https://github.com/Chevey339/kelivo/releases/download/v1.1.11/Kelivo_macos_1.1.11%2B29.dmg",
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
