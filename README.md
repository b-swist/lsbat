# lsbat

A shell script that displays information about batteries directly
from `/sys/class/power_supply` directory on your Linux machine.

## Features

- battery percentage
- battery health and capacity
- status with charge/discharge time estimate
- cycle count

## Requirements

- bash
- util-linux
- _any_ awk implementation (gawk/mawk)

### Installation

```
$ git clone https://github.com/b-swist/lsbat.git
$ cd lsbat
# make install
```

To install for a single user:

```
$ make install PREFIX=~/.local
```

> [!IMPORTANT]
> Ensure that the directory is in `$PATH` (example for `~/.local/bin`)
> ```shell
> $ export PATH="$HOME/.local/bin:$PATH"
> ```

## Usage

To get basic information, run:
```
$ lsbat
```

Example output:
```
NAME  STATUS        REMAINING  CAPACITY  ENERGY  HEALTH
BAT0  Discharging    01:08:54       31%   5.6Wh     76%
```

You can specify exact columns you want to see, using `-o` flag
with comma separated _column options_ e.g.:
```
$ lsbat -o NAME,MODEL,TECH,PATH,VOLTAGE,CYCLES
```

See all available options by running:
```
$ lsbat -h
```

## TODO

- [ ] shell completions
- [ ] json output
- [ ] more columns
- [ ] implement adding extra columns to the default set using `-o +COLUMN`

## Inspirations

This program is mainly inspired by ls* commands from [util-linux](https://github.com/util-linux/util-linux).

## License
lsbat is released under the MIT License.
