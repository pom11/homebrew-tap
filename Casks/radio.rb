cask "radio" do
  version "4.5.6"
  sha256 "70ca77ad0c4b81e7a3f31a90f92fb639c1aa4f7024be93475f8a377d1b07d429"

  url "https://github.com/pom11/Radio/releases/download/v#{version}/Radio.dmg"
  name "Radio"
  desc "Lightweight menu bar app for internet radio and live streams"
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
