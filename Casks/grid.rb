cask "grid" do
  version "1.1.1"
  sha256 "3981418520d4c8a2de35413c3ca439aa36681ad657acaf97c07ccca58f2cef09"

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
