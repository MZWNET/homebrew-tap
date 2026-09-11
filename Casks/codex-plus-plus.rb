cask "codex-plus-plus" do
  version "1.3.0"
  sha256 "4b8c5a59287852408d959d999b632dccf3a561f8bddbe008d88e84fee46b6593"

  url "https://github.com/BigPizzaV3/CodexPlusPlus/releases/download/v1.3.0/CodexPlusPlus-1.3.0-macos-arm64.dmg"
  name "Codex++"
  desc "An enhanced tool for CodexApp, striving to make Codex better to use and more comfortable"
  homepage "https://github.com/BigPizzaV3/CodexPlusPlus/"

  app "Codex++.app"
  app "Codex++ 管理工具.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/Codex++.app"]
    run "/usr/bin/codesign", args: ["-fs", "-", "{{appdir}}/Codex++.app"]
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/Codex++ 管理工具.app"]
    run "/usr/bin/codesign", args: ["-fs", "-", "{{appdir}}/Codex++ 管理工具.app"]
  end
end
