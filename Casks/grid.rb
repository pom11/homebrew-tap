cask "grid" do
  version "1.0.2"
  sha256 "6e71f2cb07b574a51e73f9dd4afcceb572f1726a6fc2b8b15298e6086f430a16"

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
