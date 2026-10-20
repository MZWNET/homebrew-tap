cask "autocad" do
  version "2027"
  sha256 "e62faad166e9c2dff1cf336ef3085f494958e160219eee603fd1d01808e4a3ae"

  url "https://efulfillment.autodesk.com/NetSWDLD/ODIS/prd/#{version}/ACDMAC/F4809E0C-B1FF-39EA-94B0-4AA6EFA85488/SFX/Autodesk_AutoCAD_#{version}_macOS.dmg"
  name "AutoCAD"
  desc "2D and 3D computer-aided design software"
  homepage "https://www.autodesk.com/products/autocad/overview"

  depends_on macos: :sonoma

  installer script: {
    executable: "Install Autodesk AutoCAD #{version} for Mac.app/Contents/Helper/Setup.app/Contents/MacOS/Setup",
    args:       ["--silent"],
    sudo:       true,
  }

  # The remover exits with 1 when it succeeds.
  uninstall quit:   "com.autodesk.AutoCAD#{version}",
            script: {
              executable:   "/Applications/Autodesk/AutoCAD #{version}/Remove AutoCAD #{version}.app/Contents/MacOS/Remove AutoCAD #{version}",
              args:         ["-silent", "-savepreferences"],
              must_succeed: false,
              sudo:         true,
            }

  zap trash: [
    "~/Library/Application Support/Autodesk/AutoCAD #{version}",
    "~/Library/Application Support/Autodesk/copyreg_sh_*.log",
    "~/Library/Application Support/Autodesk/ls_makefront_sh_*.log",
    "~/Library/Caches/com.autodesk.AutoCAD#{version}",
    "~/Library/Containers/com.autodesk.AutoCAD#{version}.AcQuickLookPreviewer",
    "~/Library/Containers/com.autodesk.AutoCAD#{version}.AcQuickLookThumbnailer",
    "~/Library/HTTPStorages/com.autodesk.AutoCAD#{version}",
    "~/Library/Logs/com.autodesk.admigrator#{version}",
    "~/Library/Preferences/com.autodesk.admigrator#{version}.plist",
    "~/Library/Preferences/com.autodesk.AutoCAD#{version}.plist",
    "~/Library/WebKit/com.autodesk.AutoCAD#{version}",
  ]
end
