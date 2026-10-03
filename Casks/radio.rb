cask "radio" do
  version "4.5.3"
  sha256 "08600ff8323d9597994f4abd5c77301f8fb13908318aa075ff73c9508b466226"

  url "https://github.com/pom11/Radio/releases/download/v#{version}/Radio.dmg"
  name "Radio"
  desc "Lightweight macOS menu bar app for internet radio and live streams"
  homepage "https://github.com/pom11/Radio"

  depends_on formula: "ffmpeg"
  depends_on formula: "streamlink"
  depends_on formula: "yt-dlp"
  depends_on macos: :sonoma

  app "Radio.app"

  zap trash: [
    "~/.config/radio",
    "~/Library/Application Support/Radio",
  ]
end
