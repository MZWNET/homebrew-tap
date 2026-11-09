cask "kelivo" do
  version "1.3.5,85-NoImpeller"
  sha256 "fa30df8f447b43cee394f0e4847ec8be3d66f6fc666d58bb0da9a1705fe281cc"

  url "https://github.com/Chevey339/kelivo/releases/download/v#{version.csv.first}/Kelivo_macos_#{version.csv.first}%2B#{version.csv.second}.dmg"
  name "Kelivo"
  desc "A Flutter LLM Chat Client. Support Mobile & Desktop."
  homepage "https://kelivo.psycheas.top/"

  app "kelivo.app"
end
