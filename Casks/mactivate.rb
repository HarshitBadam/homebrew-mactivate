cask "mactivate" do
  version "1.0.1"
  sha256 "0875c25daa8ad30ac76886873e30354d615851d740b2b1eedc1679aacfbb4e26"

  url "https://github.com/HarshitBadam/mactivate/releases/download/v#{version}/Mactivate-#{version}.dmg"
  name "Mactivate"
  desc "Turn built-in sensors and physical gestures into system controls"
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
