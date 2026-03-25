cask "radio" do
  version "4.4.8"
  sha256 "9a6a2a6de0e9388efa8c03951e23f740a135187d8575c948a069357ae8b062a9"

  url "https://github.com/pom11/Radio/releases/download/v#{version}/Radio.dmg"
  name "Radio"
  desc "Lightweight macOS menu bar app for internet radio and live streams"
  homepage "https://github.com/pom11/Radio"

  depends_on macos: ">= :sonoma"
  depends_on formula: "ffmpeg"
  depends_on formula: "yt-dlp"
  depends_on formula: "streamlink"

  app "Radio.app"

  zap trash: [
    "~/.config/radio",
    "~/Library/Application Support/Radio",
  ]
end