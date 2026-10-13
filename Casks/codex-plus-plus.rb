cask "codex-plus-plus" do
  version "1.7.7"
  sha256 "d6b9bb17258e1b7ac78093df61e27cf6060f7c890adbcc20f319f1c6f0cb1ef7"

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
