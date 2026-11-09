cask "saymore" do
  version "0.2.4"
  sha256 "a2dd60da1aeab70da8c944ee33835347561a0107cd4e50562be269665f952187"

  url "https://github.com/PraxisGrove/Saymore/releases/download/v#{version}/Saymore_#{version}_universal.dmg"
  name "Saymore"
  desc "Local-first voice typing"
  homepage "https://saymore.praxisgrove.org/"

  depends_on macos: :monterey

  app "Saymore.app"

  uninstall quit: "com.saymore.desktop"
end
