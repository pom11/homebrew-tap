cask "radio" do
  version "4.2.3"
  sha256 "70a09a1272dbbff878999fd59836dc7ffac7886022f914cf5138579b9c7504ff"

  url "https://github.com/pom11/Radio/releases/download/v#{version}/Radio.dmg"
  name "Radio"
  desc "Lightweight macOS menu bar app for internet radio and live streams"
  homepage "https://github.com/pom11/Radio"

  depends_on macos: ">= :sonoma"

  app "Radio.app"

  zap trash: [
    "~/.config/radio",
    "~/Library/Application Support/Radio",
  ]
end
