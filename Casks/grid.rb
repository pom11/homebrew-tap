cask "grid" do
  version "1.1.5"
  sha256 "44becce3e87721d8d8bac034ef998079f73aafaaa541ab1ef855b8f7b4667e3a"

  url "https://github.com/pom11/Grid/releases/download/v#{version}/Grid.dmg"
  name "Grid"
  desc "Keyboard-driven macOS menu bar app for window management and system monitoring"
  homepage "https://github.com/pom11/Grid"

  depends_on macos: ">= :sonoma"

  app "Grid.app"

  zap trash: [
    "~/.config/grid",
  ]
end
