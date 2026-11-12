cask "saymore" do
  version "0.2.5"
  sha256 "e52692ff89052a80121bcd002c9bd58f2604fa824194ef56c9a2609c6cb6bef7"

  url "https://github.com/PraxisGrove/Saymore/releases/download/v#{version}/Saymore_#{version}_universal.dmg"
  name "Saymore"
  desc "Local-first voice typing"
  homepage "https://saymore.praxisgrove.org/"

  depends_on macos: :monterey

  app "Saymore.app"

  uninstall quit: "com.saymore.desktop"
end
