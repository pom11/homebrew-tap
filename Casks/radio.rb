cask "radio" do
  version "4.5.4"
  sha256 "886516117b12e7b3389e5315a948af0a4ecca875e7a32ec0e30d64e8b541bb00"

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
