cask "dictait-mac" do
  version "1.1.0"
  sha256 "d49c38e71736800fc6263d9df8f45be572813ae0f458134d5d9a4f819d0841a8"

  url "https://github.com/trahloff/dictait/releases/download/mac-v#{version}/dictait-mac-#{version}.dmg"
  name "dictait"
  desc "Global dictation for macOS with AI-powered transcription"
  homepage "https://github.com/trahloff/dictait"

  app "dictaitMac.app"

  zap trash: [
    "~/Library/Application Support/dictaitMac",
    "~/Library/Caches/com.dictait.mac",
    "~/Library/Preferences/com.dictait.mac.plist",
  ]
end
