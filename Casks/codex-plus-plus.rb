cask "codex-plus-plus" do
  version "1.2.41"
  sha256 "1ec9aba45b27beb13058f3b62f025d5ac0572fdb4d517b7e8875367d293dd0cf"

  url "https://github.com/BigPizzaV3/CodexPlusPlus/releases/download/v1.2.41/CodexPlusPlus-1.2.41-macos-arm64.dmg",
      verified: "github.com/BigPizzaV3/CodexPlusPlus/"
  name "Codex++"
  desc "An enhanced tool for CodexApp, striving to make Codex better to use and more comfortable"
  homepage "https://github.com/BigPizzaV3/CodexPlusPlus/"

  app "Codex++.app"
  app "Codex++ 管理工具.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "/Applications/Codex++.app"]
    system_command "/usr/bin/codesign", args: ["-fs", "-", "/Applications/Codex++.app"]
    system_command "/usr/bin/xattr", args: ["-cr", "/Applications/Codex++ 管理工具.app"]
    system_command "/usr/bin/codesign", args: ["-fs", "-", "/Applications/Codex++ 管理工具.app"]
  end
end
