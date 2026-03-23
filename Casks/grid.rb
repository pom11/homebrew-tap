cask "grid" do
  version "1.0.7"
  sha256 "3418a8192404bb91d54772647e5922ed156667e9bcc3128033ba7e9c55ad4ec2"

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
