cask "codex-plus-plus" do
  version "2.6.9"
  sha256 "ddef8cd4b1aea371ac5f124524289cff1844721ea321cce62397daca95e3acbb"

  url "https://github.com/BigPizzaV3/CodexPlusPlus/releases/download/v#{version}/CodexPlusPlus-#{version}-macos-universal.dmg"
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
