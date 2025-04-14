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
MPC Bar is configured with a `~/.mpc-bar.ini` file.  Below are the
default options.  Note that `format` works just like `mpc -f`; see the
[mpc(1)](https://man.archlinux.org/man/mpc.1#f,) man page for more
information.

```
[connection]
host = localhost
port = 6600

[display]
format = [%name%: &[[%artist%|%performer%|%composer%|%albumartist%] - ]%title%]|%name%|[[%artist%|%performer%|%composer%|%albumartist%] - ]%title%|%file%
idle_message = No song playing
show_queue = true                       # Show queue/position info while playing? (true/false)
show_queue_idle = (value of show_queue) # Show queue/position info while idle? (true/false)
```
