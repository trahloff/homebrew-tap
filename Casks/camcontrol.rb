cask "camcontrol" do
  version "0.2.8"
  sha256 "aebe1c857084e7f1453d67e1f23e1667e88091b1653f2db177d795a062729ed6"

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
