cask "mactivate" do
  version "1.0.3"
  sha256 "48f28ee4c6d36a5ce7fc0c5f47299f99a28bec92be1239eb38aaad65415e3837"

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
