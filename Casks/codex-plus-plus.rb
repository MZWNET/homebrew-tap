cask "codex-plus-plus" do
  version "1.2.47"
  sha256 "314bf4d7e34ce8072e7c723ef36c52d0cd99952e94d4d0362ab49acbb757e406"

  url "https://github.com/BigPizzaV3/CodexPlusPlus/releases/download/v1.2.47/CodexPlusPlus-1.2.47-macos-arm64.dmg",
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
