cask "grid" do
  version "1.0.1"
  sha256 "09a0f91be5cb3d0f2acf6a4474b467005ea8ff5643708d4bd2e12ca13af90619"

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
