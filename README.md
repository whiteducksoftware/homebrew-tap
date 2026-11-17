# Homebrew Tap

## Casks

- [azctx](https://github.com/whiteducksoftware/azctx) (macOS 13 or later)

```sh
brew install --cask whiteducksoftware/tap/azctx
```

Installing by the fully qualified name trusts only this cask
(see [Tap Trust](https://docs.brew.sh/Tap-Trust)). The cask depends on
Homebrew's `azure-cli` cask and installs Azure CLI if it is missing.

### Upgrading from the azctx formula

azctx 2026.11 replaces the formula with a cask. After `brew update`, Homebrew
migrates an installed formula to the cask. If the migration target is not
trusted yet, Homebrew prints the commands to finish it. To migrate by hand:

```sh
brew uninstall --formula azctx
brew install --cask whiteducksoftware/tap/azctx
```

Homebrew on Linux is no longer supported for azctx. Use the
[release archives](https://github.com/whiteducksoftware/azctx/releases) instead.
See the [azctx upgrade guide](https://github.com/whiteducksoftware/azctx/blob/main/docs/upgrade.md#macos-homebrew).
