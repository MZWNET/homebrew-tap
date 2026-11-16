cask "kelivo" do
  version "1.3.6,88-NoImpeller"
  sha256 "ae7f18da9b5b9bcb02554e23fb2454aa7a4375684ccf494177298d385163e840"

  url "https://github.com/Chevey339/kelivo/releases/download/v#{version.csv.first}/Kelivo_macos_#{version.csv.first}%2B#{version.csv.second}.dmg"
  name "Kelivo"
  desc "A Flutter LLM Chat Client. Support Mobile & Desktop."
  homepage "https://kelivo.psycheas.top/"

  app "kelivo.app"
end
