cask "dictait-mac" do
  version "1.0.0"
  sha256 "93b2e66c98cf56305426f30623cd0b5479dfa189cbab02ffc5e83693002dbafb"

  url "https://github.com/trahloff/dictait/releases/download/mac-v#{version}/dictait-mac-#{version}.dmg"
  name "dictait"
  desc "Global dictation for macOS with AI-powered transcription"
  homepage "https://github.com/trahloff/dictait"

  depends_on macos: ">= :sonoma"

  app "dictaitMac.app"

  uninstall quit: "com.dictait.mac"

  zap trash: [
    "~/Library/Application Support/dictaitMac",
    "~/Library/Caches/com.dictait.mac",
    "~/Library/Preferences/com.dictait.mac.plist",
  ]
end
