cask "saymore" do
  version "0.2.7"
  sha256 "9fb8b190a53648078a12311db41812a3745176f4d07c06bfd128cfc1d186d506"

  url "https://github.com/PraxisGrove/Saymore/releases/download/v#{version}/Saymore_#{version}_universal.dmg"
  name "Saymore"
  desc "Local-first voice typing"
  homepage "https://saymore.praxisgrove.org/"

  depends_on macos: :monterey

  app "Saymore.app"

  uninstall quit: "com.saymore.desktop"
end
