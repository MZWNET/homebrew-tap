cask "kelivo" do
  version "1.3.1,80"
  sha256 "9be77d381345894580e72725d67d148d9d909cf635cb44f6a1c62b0df2019d94"

  url "https://github.com/Chevey339/kelivo/releases/download/v#{version.csv.first}/Kelivo_macos_#{version.csv.first}%2B#{version.csv.second}.dmg"
  name "Kelivo"
  desc "A Flutter LLM Chat Client. Support Mobile & Desktop."
  homepage "https://kelivo.psycheas.top/"

  app "kelivo.app"
end
