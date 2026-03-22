cask "radio" do
  version "4.4.3"
  sha256 "b65e6c2e0a01957462aa9ca77c109d1f033afdcf9a9c35f4656a28d37f19bbd4"

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