cask "menubar-player" do
  version "0.1.0"
  sha256 "87c3aa45c4eecfc5ac2d5f8f2818a0117387561f719afccba752d6f1cb26b7fa"

  url "https://github.com/cagndz/menubar-player/releases/download/v#{version}/Menubar-Player-#{version}.dmg"
  name "Menubar Player"
  desc "Audio player for YouTube in the menu bar"
  homepage "https://github.com/cagndz/menubar-player"

  depends_on arch: :arm64
  depends_on formula: "yt-dlp"
  depends_on macos: :sonoma

  app "Menubar Player.app"

  uninstall quit: "com.cagndz.menubar-player"

  zap trash: [
    "~/Library/Application Support/com.cagndz.menubar-player",
    "~/Library/Caches/com.cagndz.menubar-player",
    "~/Library/WebKit/com.cagndz.menubar-player",
  ]
end
