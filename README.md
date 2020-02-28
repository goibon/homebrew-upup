# Brew-upup

External command for `homebrew` for the lazy people who do not wish to write more than a single command to upgrade their packages and uninstall the old versions of them.

## Installation

`$ brew tap goibon/upup`

## Usage

```
Usage: brew upup [--cleanup] [--quiet]

    -c, --cleanup                    Calls brew cleanup after the last step
    -q, --quiet                      Runs quietly with no output unless
                                     something goes wrong
    -h, --help                       Show this message.
```

Will call `brew update` followed by `brew upgrade` optionally followed by `brew cleanup` if the `--cleanup` option was passed.

## License

The MIT License (MIT)

Copyright (c) 2020 Kasper Lind Sørensen

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
