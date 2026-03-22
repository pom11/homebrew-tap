cask "grid" do
  version "1.0.1"
  sha256 "054657963e3be553c270cc2ae78f029d4fd24304869427a74ba55a5b08b711ce"

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
