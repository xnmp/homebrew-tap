cask "tauri-explorer" do
  version "0.30.1"
  sha256 "029f63262506784071c1ee425426fe2383442c498df1ac8d020a4524b55d3b80"

  url "https://github.com/xnmp/tauri-explorer/releases/download/v#{version}/tauri-explorer_#{version}_aarch64.dmg"
  name "Tauri Explorer"
  desc "Keyboard-first file manager with fuzzy quick-open and a command palette"
  homepage "https://github.com/xnmp/tauri-explorer"

  # The app updates itself; brew upgrade leaves it to the in-app updater.
  auto_updates true
  depends_on arch: :arm64

  app "tauri-explorer.app"

  zap trash: [
    "~/Library/Application Support/io.github.xnmp.tauri-explorer",
    "~/Library/Application Support/tauri-explorer",
    "~/Library/Caches/io.github.xnmp.tauri-explorer",
    "~/Library/Logs/io.github.xnmp.tauri-explorer",
    "~/Library/Preferences/io.github.xnmp.tauri-explorer.plist",
    "~/Library/Saved Application State/io.github.xnmp.tauri-explorer.savedState",
    "~/Library/WebKit/io.github.xnmp.tauri-explorer",
  ]
end
