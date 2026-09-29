cask "saymore" do
  version "0.2.0"
  sha256 "099a105d188a2ecc3b01d3b3774ced597a193292fae4db3e018670b8298a1fd0"

  url "https://github.com/PraxisGrove/Saymore/releases/download/v#{version}/Saymore_#{version}_universal.dmg"
  name "Saymore"
  desc "Local-first voice typing"
  homepage "https://saymore.praxisgrove.org/"

  depends_on macos: :monterey

  app "Saymore.app"

  uninstall quit: "com.saymore.desktop"
end
