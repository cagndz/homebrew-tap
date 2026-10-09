cask "menubar-player" do
  version "0.1.0"
  sha256 "e5dcd4a4079beb704c5cd78e863f0e4e34768759c584731a0bce1792cf36eb94"

  url "https://github.com/cagndz/menubar-player/releases/download/v#{version}/Menubar-Player-#{version}.dmg"
  name "Menubar Player"
  desc "Plays the audio of long YouTube videos from the menu bar"
  homepage "https://github.com/cagndz/menubar-player"

  depends_on arch: :arm64
  depends_on formula: "yt-dlp"
  depends_on macos: :sonoma

  app "Menubar Player.app"

  uninstall quit: "com.cagndz.menubar-player"

  zap trash: [
    "~/Library/Application Support/com.cagndz.menubar-player",
    "~/Library/Caches/com.cagndz.menubar-player",
    "~/Library/LaunchAgents/Menubar Player.plist",
    "~/Library/WebKit/com.cagndz.menubar-player",
  ]
end
