cask "menubar-player" do
  version "0.1.2"
  sha256 "a57894e0ea9abec00c67ee83c0e4060cf5511ce2e35c0bdf912a9775e815c4af"

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
