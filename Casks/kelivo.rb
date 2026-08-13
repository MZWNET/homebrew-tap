cask "kelivo" do
  version "1.2.1,64"
  sha256 "b83beaadc3e71a20d82d4d58ad23d829aa3eb28cab8e7929999e010a33a8c28d"

  url "https://github.com/Chevey339/kelivo/releases/download/v1.2.1/Kelivo_macos_1.2.1%2B64.dmg",
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
