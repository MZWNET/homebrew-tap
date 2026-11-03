cask "kelivo" do
  version "1.3.4,84-NoImpeller"
  sha256 "c834e59f6e63e6d69dcbad69d2b0f6bae7a2a3a58bb5b5c5ec7b9175a12f2580"

  url "https://github.com/Chevey339/kelivo/releases/download/v#{version.csv.first}/Kelivo_macos_#{version.csv.first}%2B#{version.csv.second}.dmg"
  name "Kelivo"
  desc "A Flutter LLM Chat Client. Support Mobile & Desktop."
  homepage "https://kelivo.psycheas.top/"

  app "kelivo.app"
end
