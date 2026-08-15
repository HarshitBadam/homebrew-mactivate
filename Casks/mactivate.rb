cask "mactivate" do
  version "1.0.0"
  sha256 "6ae58888ef0bc36cc69a0efa1cd20f79fcdb02c250eeeff3bf310c9bee0397b8"

  url "https://github.com/HarshitBadam/mactivate/releases/download/v#{version}/Mactivate-#{version}.dmg"
  name "Mactivate"
  desc "Turn MacBook sensors and physical gestures into macOS controls"
  homepage "https://github.com/HarshitBadam/mactivate"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Mactivate.app"

  caveats <<~EOS
    Mactivate is distributed without Apple notarization. On first launch,
    macOS may require approval in System Settings > Privacy & Security.
    Do not disable Gatekeeper.
  EOS
end
