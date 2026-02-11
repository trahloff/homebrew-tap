cask "dictait-mac" do
  version "1.0.0"
  sha256 "38c8dd488e9141c6e7786f5afe157c132ca8f45c9901698c2d701aba0db8f8c7"

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
