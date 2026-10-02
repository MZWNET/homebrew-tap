cask "codex-plus-plus" do
  version "1.5.0"
  sha256 "0c8461283b57d869eab09078f100a71d6585240b72cc3b87b70b174acf0a9a86"

  url "https://github.com/BigPizzaV3/CodexPlusPlus/releases/download/v#{version}/CodexPlusPlus-#{version}-macos-arm64.dmg"
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
