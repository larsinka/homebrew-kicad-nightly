cask "kicad-nightly" do
  version "20210224-070129-bf5cd2e233"
  sha256 "2284d5a3e59fa92926e551c2990260caf26d14ee23eb61daffe5f9f2db7d2e49"

  url "https://kicad-downloads.s3.cern.ch/osx/nightly/kicad-unified-#{version}-10_14.dmg",
      verified: "kicad-downloads.s3.cern.ch/"
  appcast "https://kicad-downloads.s3.cern.ch/?delimiter=/&prefix=osx/nightly/"
  name "KiCad"
  desc "Electronics design automation suite"
  homepage "https://kicad.org/"

  depends_on macos: ">= :mojave"

  app "KiCad/KiCad.app",              target: "KiCad/KiCad.app"
  app "KiCad/Bitmap2Component.app",   target: "KiCad/Bitmap2Component.app"
  app "KiCad/Eeschema.app",           target: "KiCad/Eeschema.app"
  app "KiCad/GerbView.app",           target: "KiCad/GerbView.app"
  app "KiCad/PCB Calculator.app",     target: "KiCad/PCB Calculator.app"
  app "KiCad/Pcbnew.app",             target: "KiCad/Pcbnew.app"
  app "KiCad/Page Layout Editor.app", target: "KiCad/Page Layout Editor.app"
  artifact "KiCad/share",             target: "/Applications/KiCad/share"
  artifact "kicad/3dmodels",          target: "/Library/Application Support/kicad/3dmodels"
  artifact "kicad/help",              target: "/Library/Application Support/kicad/help"
  artifact "kicad/library",           target: "/Library/Application Support/kicad/library"
  artifact "kicad/modules",           target: "/Library/Application Support/kicad/modules"
  artifact "kicad/template",          target: "/Library/Application Support/kicad/template"

  uninstall rmdir: [
    "/Library/Application Support/kicad",
    "#{appdir}/KiCad",
  ]

  zap trash: "~/Library/Preferences/kicad"
end
