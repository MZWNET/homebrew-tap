cask "kelivo" do
  version "1.3.0,79"
  sha256 "8c1312acd969dff18572e1a4a62443743b569cef38514f719f0cc1136a72ceb5"

  url "https://github.com/Chevey339/kelivo/releases/download/v#{version.csv.first}/Kelivo_macos_#{version.csv.first}%2B#{version.csv.second}.dmg"
  name "Kelivo"
  desc "A Flutter LLM Chat Client. Support Mobile & Desktop."
  homepage "https://kelivo.psycheas.top/"

  app "kelivo.app"
end
