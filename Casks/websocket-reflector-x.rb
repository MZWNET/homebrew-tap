cask "websocket-reflector-x" do
  version "0.6.2"
  sha256 "2e9179211565c8b338eeaef249a8008c85656096c9f6fca1bfeb650dd172b9ce"

  url "https://github.com/XDSEC/WebSocketReflectorX/releases/download/#{version}/WebSocketReflectorX-#{version}-macos-aarch64.dmg"
  name "WebSocketReflectorX"
  desc "Controlled TCP-over-WebSocket forwarding tunnel"
  homepage "https://github.com/XDSEC/WebSocketReflectorX/"

  app "WebSocketReflectorX.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/WebSocketReflectorX.app"]
    run "/usr/bin/codesign", args: ["-fs", "-", "{{appdir}}/WebSocketReflectorX.app"]
  end
end
