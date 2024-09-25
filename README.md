![MPC Bar](mpc-bar.png)

# MPC Bar
A Mac menu bar client for the [Music Player Daemon](https://www.musicpd.org).

## Installation
If you have [Homebrew](https://brew.sh), you can simply run these
commands to install and launch MPC Bar:

```
brew install spnw/formulae/mpc-bar
brew services start spnw/formulae/mpc-bar
```

## Configuration
MPC Bar is configured with a `~/.mpcbar` file. Currently the only
options are these:

```
[connection]
host = localhost
port = 6600
```
