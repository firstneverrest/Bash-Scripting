# Bash

Bash is a Unix Shell and command language written by Brian Fox for the GNU Project. Bash was created to replace Bourne shell. First release in 1989, it has been used as the default shell for most Linux distributions. You can install WSL to use bash in Windows.

## Check what shell you are using

```
echo $0

// or

which bash
```

If you have installed bash it will show `/usr/bin/bash`.

## Bash documentation

Use `man bash` to open bash manual in CLI. Also, you can visit the manual at [Bash Reference Manual](https://www.gnu.org/savannah-checkouts/gnu/bash/manual/bash.html).

## Script File Basics

- First two character should be `#!` (known as "shebang").
- Followed by path to Bash or env such as `#!/usr/bin/env bash` and `#!/bin/bash`
- This is executed by the kernel system called `execve()`.
- Kernel checks for `#!` and passes the path to the original program as a command-line argument.
- Bash script file extension is `.sh`
- Make scripts executable with `chmod u+x`
- With only read permission, execute a script with `bash myscript.sh`

## How to create bash script and run bash

1. Create bash file that end with `.sh` like `myscript.sh`
2. Use `echo $0` or `which bash` to see where are your bash
3. In bash file, write `#! <bash_path>` at the top of the file
4. Write some bash code such as `echo Hello Bash!`
5. Run bash script with `./myscript.sh` or `bash myscript.sh`

## Bash syntax

```bash

```
