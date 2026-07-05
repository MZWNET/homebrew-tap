cask "codex-plus-plus" do
  version "1.2.32"
  sha256 "549b6e6ccaae07c76ef2d3363021ffde370f47d8de271d55a96c7cc956dcf910"

  url "https://github.com/BigPizzaV3/CodexPlusPlus/releases/download/v1.2.32/CodexPlusPlus-1.2.32-macos-arm64.dmg",
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
