cask "radio" do
  version "4.4.5"
  sha256 "3371076692a5e173f09f9d9ea72cd86aeb4d3edbc2eae6bb374ed4fd183cd5c6"

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