cask "websocket-reflector-x" do
  version "0.5.17"
  sha256 "d3ea0617b499add3332a1496089956136fca167e586a68549dea4db5f8e5bceb"

  url "https://github.com/XDSEC/WebSocketReflectorX/releases/download/0.5.17/WebSocketReflectorX-0.5.17-macos-aarch64.dmg",
      verified: "github.com/XDSEC/WebSocketReflectorX/"
  name "WebSocketReflectorX"
  desc "Controlled TCP-over-WebSocket forwarding tunnel"
  homepage "https://github.com/XDSEC/WebSocketReflectorX/"

  app "WebSocketReflectorX.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "/Applications/WebSocketReflectorX.app"]
    system_command "/usr/bin/codesign", args: ["-fs", "-", "/Applications/WebSocketReflectorX.app"]
  end
end
