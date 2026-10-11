# Loci Homebrew tap

Loci is a private AI assistant that runs models on your own Mac. This tap installs the Loci Mac app.

## Install

```sh
brew install --cask askloci/tap/loci
```

To tap first and install by the short name, trust the cask before installing:

```sh
brew trust --cask askloci/tap/loci
brew tap askloci/tap
brew install --cask loci
```

In a `Brewfile`:

```ruby
cask "askloci/tap/loci", trusted: true
```

Requirements: Apple silicon and macOS 14 or later.

Without Homebrew, download the disk image: https://askloci.ai/api/mac-download

Intel Macs: [Loci on the Mac App Store](https://apps.apple.com/us/app/private-local-ai-loci/id6768186318?mt=12).

## Updates

The app keeps itself up to date, so `brew upgrade` leaves it alone.

## Uninstall

```sh
brew uninstall --cask loci
```

`brew uninstall --cask --zap loci` also removes the app's data: downloaded models, conversations and settings.
