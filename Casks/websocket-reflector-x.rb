cask "websocket-reflector-x" do
  version "1.1.4"
  sha256 "7506ddda66dee4908d86eb0444de2e4cd18c3f4cd7f24a344aabdf7e486c8c8f"

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
