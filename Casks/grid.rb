cask "grid" do
  version "1.1.3"
  sha256 "34e82c08d61a645a2c286741c080d2aa7054ca9e745ff9b149bd277c4742a0ea"

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
