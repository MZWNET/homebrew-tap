cask "saymore" do
  version "0.3.1"
  sha256 "0d866b0cd57e6315c73869196102dbcee070b4e99e15aa38c80edf49221d16de"

  url "https://github.com/PraxisGrove/Saymore/releases/download/v#{version}/Saymore_#{version}_universal.dmg"
  name "Saymore"
  desc "Local-first voice typing"
  homepage "https://saymore.praxisgrove.org/"

  depends_on macos: :monterey

  app "Saymore.app"

  uninstall quit: "com.saymore.desktop"
end
