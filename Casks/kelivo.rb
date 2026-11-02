cask "kelivo" do
  version "1.3.3,83-NoImpeller"
  sha256 "5389f06c933d56b9c1e7ef81c477ce61c4ef6378d2e06015553364ed6926a841"

  url "https://github.com/Chevey339/kelivo/releases/download/v#{version.csv.first}/Kelivo_macos_#{version.csv.first}%2B#{version.csv.second}.dmg"
  name "Kelivo"
  desc "A Flutter LLM Chat Client. Support Mobile & Desktop."
  homepage "https://kelivo.psycheas.top/"

  app "kelivo.app"
end
