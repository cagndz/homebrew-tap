cask "menubar-player" do
  version "0.1.0"
  sha256 "982d9b0d14a15fd8314735a9e0390be3422990bae3d2bb5aa405d3fef64e021c"

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
    "~/Library/WebKit/com.cagndz.menubar-player",
  ]
end
