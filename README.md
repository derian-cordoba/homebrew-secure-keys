<div style="display: flex; justify-content: between; gap: 10px; padding-bottom: 20px;">
  <a href="https://github.com/derian-cordoba/secure-keys-generator/blob/main/LICENSE" title="license">
    <img alt="LICENSE MIT" src="https://img.shields.io/badge/license-MIT-428f7e.svg?logo=open%20source%20initiative&logoColor=white&labelColor=555555">
  </a>

  <a href="https://github.com/derian-cordoba/secure-keys-generator" title="Apple Intel x86_64 supported">
    <img alt="macOS architectures supported" src="https://img.shields.io/badge/macOS-Intel%20x86__64%20-007DC3?logo=apple&logoColor=555555&labelColor=ffffff">
  </a>  
  <a href="https://github.com/derian-cordoba/secure-keys-generator" title="Apple M1 arm64 supported">
    <img alt="macOS architectures supported" src="https://img.shields.io/badge/macOS-Apple%20arm64%20-c0476d?logo=apple&logoColor=555555&labelColor=ffffff">
  </a>
</div>

<div style="display: flex; justify-content: center;">
  <img src="https://github.com/user-attachments/assets/107efc59-3f31-4446-bf29-ef751cef11b4" alt="Homebrew Tap for Secure Keys">
</div>

<div style="display: flex; justify-content: center;">
  <h1>Homebrew Tap for Secure Keys</h1>
</div>

## Pre-requisites

- Install Homebrew:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

- If previously installed, update homebrew and the formulae:

```bash
brew update
```

## Installation

### Add this tap

Fetch the formula in this tap:

```bash
brew tap derian-cordoba/secure-keys
```

### Install Secure Keys

- Install latest version:

```bash
brew install derian-cordoba/secure-keys/secure-keys
```

- For example, to install `Secure Keys 1.0.4`:

```bash
brew install derian-cordoba/secure-keys/secure-keys@1.0.4
```

- Test your `secure-keys` installlation:

```bash
secure-keys --help

# Or

secure-keys --version
```

## Usage

You can see more information about the usage of `secure-keys` by visiting the [official repository](https://github.com/derian-cordoba/secure-keys-generator)

## License

This project is licensed under the MIT [License](LICENSE).
