cask "grid" do
  version "1.1.0"
  sha256 "0098b43221471092b2336b6c7d3738c3be24351f25f581fe397cd6cd0a84b96a"

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
