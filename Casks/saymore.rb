cask "saymore" do
  version "0.3.0"
  sha256 "203440f43826b4ca6d6f5d7218a54fa8fb2e1ce6b0d7e8796f808e8b83c1b76a"

  url "https://github.com/PraxisGrove/Saymore/releases/download/v#{version}/Saymore_#{version}_universal.dmg"
  name "Saymore"
  desc "Local-first voice typing"
  homepage "https://saymore.praxisgrove.org/"

  depends_on macos: :monterey

  app "Saymore.app"

  uninstall quit: "com.saymore.desktop"
end
