cask "camcontrol" do
  version "0.2.7"
  sha256 "1b8710b7e86dfd3a7e5ad2a95e26861423fe4261e7654594bca896026cc05b8d"

  # The source repo is private; the notarized DMGs are released here.
  url "https://github.com/trahloff/homebrew-tap/releases/download/camcontrol-v#{version}/CamControl-#{version}.dmg"
  name "CamControl"
  desc "Face-priority exposure and Key Light control for Insta360 Link 2/2C"
  homepage "https://github.com/trahloff/homebrew-tap"

  depends_on macos: :sonoma

  app "CamControl.app"

  uninstall quit: "de.rahloff.camcontrol"

  zap trash: [
    "~/Library/Application Support/CamControl",
    "~/Library/Preferences/de.rahloff.camcontrol.plist",
  ]
end
