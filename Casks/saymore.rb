cask "saymore" do
  version "0.2.9"
  sha256 "00cc0820b0588bc8ee6e5b01018f7b16c5a7bedf1d1997ce6a8e4224abf55369"

  url "https://github.com/PraxisGrove/Saymore/releases/download/v#{version}/Saymore_#{version}_universal.dmg"
  name "Saymore"
  desc "Local-first voice typing"
  homepage "https://saymore.praxisgrove.org/"

  depends_on macos: :monterey

  app "Saymore.app"

  uninstall quit: "com.saymore.desktop"
end
