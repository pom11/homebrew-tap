cask "radio" do
  version "4.3.1"
  sha256 "bf2919f558affc47ef794660ffb3c5cde38cf6d1457c19ffbd7f3c7a3b055cbe"

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