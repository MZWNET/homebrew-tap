cask "kelivo" do
  version "1.1.15,52"
  sha256 "ffd9c40c4ffb0faed52aa1fe2532ed32db30159af812b5a9e40eacfdc910bf3f"

  url "https://github.com/Chevey339/kelivo/releases/download/v1.1.15/Kelivo_macos_1.1.15%2B52.dmg",
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
