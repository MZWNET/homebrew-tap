cask "codex-plus-plus" do
  version "1.1.7"
  sha256 "1304fccb5a39cb66b8955724718163d0433029d6b0a76ab6b187a3b9b242bd42"

  url "https://github.com/BigPizzaV3/CodexPlusPlus/releases/download/v1.1.7/CodexPlusPlus-1.1.7-macos-arm64.dmg",
      verified: "github.com/BigPizzaV3/CodexPlusPlus/"
  name "Codex++"
  desc "An enhanced tool for CodexApp, striving to make Codex better to use and more comfortable"
  homepage "https://github.com/BigPizzaV3/CodexPlusPlus/"

  app "Codex++.app"
  app "Codex++ 管理工具.app"
end
