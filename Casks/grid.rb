cask "grid" do
  version "1.1.2"
  sha256 "b3fde3602c9d3bab5255455cc8f65207d6e7837dc8291409613ef6999ae9b93c"

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
