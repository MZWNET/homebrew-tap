cask "websocket-reflector-x" do
  version "0.6.1"
  sha256 "b928da8a21a4eeaf8728129f2d9719026f2393d32e36c50920c04f243d3ecbb1"

  url "https://github.com/XDSEC/WebSocketReflectorX/releases/download/0.6.1/WebSocketReflectorX-0.6.1-macos-aarch64.dmg"
  name "WebSocketReflectorX"
  desc "Controlled TCP-over-WebSocket forwarding tunnel"
  homepage "https://github.com/XDSEC/WebSocketReflectorX/"

  app "WebSocketReflectorX.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/WebSocketReflectorX.app"]
    run "/usr/bin/codesign", args: ["-fs", "-", "{{appdir}}/WebSocketReflectorX.app"]
  end
end
