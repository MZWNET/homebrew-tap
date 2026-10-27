cask "kelivo" do
  version "1.3.2,81-NoImpeller"
  sha256 "6743ce71fef27b15fa5db2d546bdea2328d927007c36aa52f2056532d9585231"

  url "https://github.com/Chevey339/kelivo/releases/download/v#{version.csv.first}/Kelivo_macos_#{version.csv.first}%2B#{version.csv.second}.dmg"
  name "Kelivo"
  desc "A Flutter LLM Chat Client. Support Mobile & Desktop."
  homepage "https://kelivo.psycheas.top/"

  app "kelivo.app"
end
