cask "codex-plus-plus" do
  version "1.4.0"
  sha256 "a62245432e39dd9884c7448c69c953fa60d53034def79e87b3edbc9ac1d1468c"

  url "https://github.com/BigPizzaV3/CodexPlusPlus/releases/download/v1.4.0/CodexPlusPlus-1.4.0-macos-arm64.dmg"
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
