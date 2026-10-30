# edo

Go clone of [ed(1)](https://man.openbsd.org/ed.1), the classic Unix line editor

## Build

`build.sh` builds into `build/`.

```sh
./build.sh                  # build/edo
./build/edo poem.txt        # run what you built
./build.sh test
```

## Usage

### Basic Operation

```bash
# Start with empty buffer
edo

# Edit a file
edo filename.txt

# Start with custom prompt
edo -p "* "
```

### Command Line Flags

- `-p string`: Set custom prompt (default "\*")
- `-v`: Display version information and exit

### Example Session

```
$ edo
*a
hello world
line two
.
*w file.txt
2
*q
```

Please make sure to update tests as appropriate.

## TODO

- [ ] print buffer size on load
- [ ] don't show prompt when appending/inserting
- [ ] support basic error messages
- [ ] enable showing error messages with H similar to P
- [ ] Line ranges (e.g., `1,5p`)
- [ ] Search commands (`/pattern/`)
- [ ] Substitute command (`s/old/new/`)
- [ ] Copy/move lines
- [ ] Undo functionality
