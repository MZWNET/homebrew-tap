cask "kelivo" do
  version "1.3.7,89-NoImpeller"
  sha256 "215c209b7e443b2a9dd9d7e207e4fda6ba70f9537f67f0d586f787a41054beb9"

  url "https://github.com/Chevey339/kelivo/releases/download/v#{version.csv.first}/Kelivo_macos_#{version.csv.first}%2B#{version.csv.second}.dmg"
  name "Kelivo"
  desc "A Flutter LLM Chat Client. Support Mobile & Desktop."
  homepage "https://kelivo.psycheas.top/"

  app "kelivo.app"
end
