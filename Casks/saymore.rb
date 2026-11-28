cask "saymore" do
  version "0.3.2"
  sha256 "eb0a72779bb97c64cfb1f8239105c4ed498a10e39d2fc64a5fe22b27d764d8a7"

  url "https://github.com/PraxisGrove/Saymore/releases/download/v#{version}/Saymore_#{version}_universal.dmg"
  name "Saymore"
  desc "Local-first voice typing"
  homepage "https://saymore.praxisgrove.org/"

  depends_on macos: :monterey

  app "Saymore.app"

  uninstall quit: "com.saymore.desktop"
end
