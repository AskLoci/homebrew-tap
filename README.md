# Loci Homebrew tap

Loci is a private AI assistant that runs models on your own Mac. This tap installs the Loci Mac app.

## Install

```sh
brew install --cask askloci/tap/loci
```

Use the full name: `brew search` lists only casks from taps you have added and trusted, so it does not show Loci. Installing by the full name trusts this one cask.

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

The cask names each release's disk image by its SHA-256, so Homebrew checks the download before it installs anything.

Without Homebrew, download the disk image: https://askloci.ai/api/mac-download

Intel Macs: [Loci on the Mac App Store](https://apps.apple.com/us/app/private-local-ai-loci/id6768186318?mt=12).

## Coding agents

Claude Code, Codex and other agents on the same Mac can use Loci's local models over MCP or an OpenAI-compatible endpoint. Setup: https://askloci.ai/agents/. Agent access needs Loci 0.1.21 or later.

## Updates

The app keeps itself up to date, so `brew upgrade` leaves it alone and never quits a running Loci. `brew upgrade --greedy` reinstalls it from the newest release.

## Uninstall

```sh
brew uninstall --cask loci
```

Uninstalling quits Loci first. `brew uninstall --cask --zap loci` also removes the app's data: downloaded models, conversations and settings.
