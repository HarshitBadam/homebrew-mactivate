# homebrew-mactivate

Homebrew tap distributing [Mactivate](https://github.com/HarshitBadam/mactivate), a macOS app that turns built-in sensor gestures into system controls.

## Install

```bash
brew tap HarshitBadam/mactivate
brew trust --cask HarshitBadam/mactivate/mactivate
brew install --cask mactivate
```

Or in one line:

```bash
brew install --cask HarshitBadam/mactivate/mactivate
```

## Requirements

- Apple Silicon (arm64)
- macOS 13 (Ventura) or later

## Notarization

Mactivate is ad-hoc signed, not Apple-notarized. On first launch, macOS may block the app. Approve it once under **System Settings → Privacy & Security → Open Anyway**. Do not disable Gatekeeper to work around this.

## Upgrade / uninstall

```bash
brew upgrade --cask mactivate
brew uninstall --cask mactivate
```

## Source

See the [Mactivate repository](https://github.com/HarshitBadam/mactivate) for source, documentation, and releases.
