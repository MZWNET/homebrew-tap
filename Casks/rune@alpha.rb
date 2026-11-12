cask "rune@alpha" do
  version "2.0.0-alpha.16"
  sha256 "4c11877634f663d4d2aabf823ceac4d4afbc9449b16e158315a726cb789964cf"

  url "https://github.com/Losses/rune/releases/download/v#{version}/Rune-v#{version}-macOS.dmg"
  name "Rune"
  desc "Music player that blends classic design with modern technology"
  homepage "https://rune.not.ci/"

  depends_on macos: :monterey

  app "Rune.app"

  zap trash: [
    "~/Library/Application Scripts/ci.not.rune",
    "~/Library/Containers/ci.not.rune",
  ]
end
