cask "websocket-reflector-x" do
  version "0.6.0"
  sha256 "b3d720a8a0256fe0928d5cbd8cc23453be57a932b123aa830f0586e98471eab2"

  url "https://github.com/XDSEC/WebSocketReflectorX/releases/download/0.6.0/WebSocketReflectorX-0.6.0-macos-aarch64.dmg",
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
