cask "grid" do
  version "1.1.7"
  sha256 "f65166bddd0659ab1bccf81640aaca5aabae2a090c2a6a2484f207da8ef871c5"

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
