cask "codex-plus-plus" do
  version "1.2.56"
  sha256 "5725fd0c81b258b5ca601c5fd121480a467a3a771b4ff0753e871fff598fb206"

  url "https://github.com/BigPizzaV3/CodexPlusPlus/releases/download/v1.2.56/CodexPlusPlus-1.2.56-macos-arm64.dmg"
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
