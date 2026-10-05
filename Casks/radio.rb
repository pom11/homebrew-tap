cask "radio" do
  version "4.5.5"
  sha256 "4505698e3b0f8fc42cd2c8fee650cd4d93b3d03c92a5b8fb0495860bf1f7dd2b"

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
