cask "grid" do
  version "1.0.0"
  sha256 "bc0d5576c72be8dc2aa63976c8510d54a02424a6651673921111dd2fa00f3f1f"

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
