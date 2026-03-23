cask "grid" do
  version "1.0.6"
  sha256 "ddc3497c72795c54f869c178092b61f38f4fa8c0eba31890be031bdc47fe3fb4"

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
