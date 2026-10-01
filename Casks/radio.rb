cask "radio" do
  version "4.5.0"
  sha256 "61a6148e5cd04a4755ca38263794bd35c394af360aad9b44e35c0f997636305d"

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
