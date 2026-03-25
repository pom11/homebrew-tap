cask "grid" do
  version "1.0.9"
  sha256 "f3e91adac0e9e0cb93bb850f85c866bd5f5c7fda707a07a27f872ee8e7ce9ba8"

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
