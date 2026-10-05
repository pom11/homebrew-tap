cask "grid" do
  version "1.1.6"
  sha256 "2f58c7fc74d12f75de9dc3ff2eb47f8d56cfc241e0bd71e988ef2fc49d3f1599"

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
