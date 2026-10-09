cask "menubar-player" do
  version "0.1.1"
  sha256 "be9e6d192ca19f9307842c03219b8bc9c34b1319f2efbe4b10945dc1dc1444af"

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
