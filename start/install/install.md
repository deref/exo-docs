# Install

## Standalone Installer

To install to `~/.exo` with no other system changes, run:

```bash
curl -sL https://exo.deref.io/install | bash
```

## Homebrew (MacOS or Linux)

```bash
brew tap deref/tap
brew install exo
```

See [Deref's Homebrew tap](https://github.com/deref/homebrew-tap) for the
package source.

## Linux Packages

Linux packages are available for Debian, Alpine, RPM and Homebrew, as well as in a binary format:
[Latest Release Artifacts](https://github.com/deref/exo/releases/latest).

### Debian

Download the latest `.deb` file from the release link above and run the
following command:

```bash
sudo apt install ./exo_VERSION_linux_ARCH.deb
```

Note: the file path must be specified either as an absolute path or with a
leading `./`.

### Alpine

Download the latest `.apk` file from the release link above and run the
following command:

```bash
apk add --allow-untrusted ./exo_VERSION_linux_ARCH.apk
```

### RPM

Download the latest `.rpm` file from the release link above and run the
following command:

```bash
sudo rpm -i ./exo_VERSION_linux_ARCH.rpm
```


## Manual Installation

Download the latest `exo_standalone_VERSION_OS_ARCH.tar.gz` file from the
[latest release](https://github.com/deref/exo/releases/latest) and extract the
contents:

```bash
tar -zxf exo_standalone_VERSION_OS_ARCH.tar.gz
```

Move the `exo` binary to an appropriate directory:
```bash
mkdir -p ~/.exo/bin && mv ./exo ~/.exo/bin
```

Add that directory to your shell's `PATH`:
```bash
export PATH="$HOME/.exo/bin:$PATH"
```
You will need to do this in your shell configuration (e.g. `.bashrc`/`.zshrc`) if you wish this to
persist.

### Shell Completions

Shell completion support is available for bash, zsh, fish, and powershell. For installation instructions, run `exo completion --help`.
