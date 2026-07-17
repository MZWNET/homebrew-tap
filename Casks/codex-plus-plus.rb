cask "codex-plus-plus" do
  version "1.2.38"
  sha256 "22b173b1cdfdffbbf447b8a8c29767031b25f6f5a0fe22bcc83ae5f64a7734c7"

  url "https://github.com/BigPizzaV3/CodexPlusPlus/releases/download/v1.2.38/CodexPlusPlus-1.2.38-macos-arm64.dmg",
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
