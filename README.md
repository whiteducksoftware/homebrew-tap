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

azctx 2026.11 replaces the formula with a cask. Remove the formula first, then
install the cask:

```sh
brew uninstall --formula azctx
brew install --cask whiteducksoftware/tap/azctx
```

`brew update` reports the migration. If the cask is not trusted yet, it suggests
`brew trust` and `brew install --cask` only. Run in that order with the formula
still installed, the cask cannot link `azctx` and `azctx version` keeps showing
2024.12.5. To fix that:

```sh
brew uninstall --formula azctx
brew reinstall --cask whiteducksoftware/tap/azctx
```

Homebrew on Linux is no longer supported for azctx. Use the
[release archives](https://github.com/whiteducksoftware/azctx/releases) instead.
See the [azctx upgrade guide](https://github.com/whiteducksoftware/azctx/blob/main/docs/upgrade.md#macos-homebrew).
