cask "menubar-player" do
  version "0.2.0"
  sha256 "22f132299b99c02c94f20ad47ef084482be2ee389d120da544296e82745de795"

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
