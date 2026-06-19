cask "kelivo" do
  version "1.1.17,61"
  sha256 "db4d1c3b645ee509d9594438ed7e5cacbc10ed1494fcfee852988bb300cea4b8"

  url "https://github.com/Chevey339/kelivo/releases/download/v1.1.17/Kelivo_macos_1.1.17%2B61.dmg",
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
