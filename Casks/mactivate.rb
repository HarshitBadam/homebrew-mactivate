cask "mactivate" do
  version "1.0.2"
  sha256 "35d1421c3e72cc9a06d6c9fabc70d41b28e978612381f760eff3605373e8f462"

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
