cask "grid" do
  version "1.0.3"
  sha256 "bc7eafdcc238ee90cb0989f277c375b49f469fe3fe3c7138a042c77750cd1514"

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
