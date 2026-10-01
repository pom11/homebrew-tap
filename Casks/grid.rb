cask "grid" do
  version "1.1.4"
  sha256 "26350db1a64142a34c1b9263cd4b8fc6a873796f67c4aec407d9fe5c6809abad"

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
