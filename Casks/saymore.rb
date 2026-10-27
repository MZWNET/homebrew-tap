cask "saymore" do
  version "0.2.2"
  sha256 "277f04604b923318e93f59fdf65d2328b96a9bc87895109a6d7d7ed4bd8aed99"

  url "https://github.com/PraxisGrove/Saymore/releases/download/v#{version}/Saymore_#{version}_universal.dmg"
  name "Saymore"
  desc "Local-first voice typing"
  homepage "https://saymore.praxisgrove.org/"

  depends_on macos: :monterey

  app "Saymore.app"

  uninstall quit: "com.saymore.desktop"
end
