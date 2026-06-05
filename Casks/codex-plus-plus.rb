cask "codex-plus-plus" do
  version "1.2.3"
  sha256 "c110cee2d1a473e10a06e5b87fc7f0b47996aee6aaa9197604ed6bee1f8c29b0"

  url "https://github.com/BigPizzaV3/CodexPlusPlus/releases/download/v1.2.3/CodexPlusPlus-1.2.3-macos-arm64.dmg",
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
