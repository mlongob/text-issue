# Issue

When running this program with a small stack, the program get stuck in a busy loop and never returns.

The program is simply reading a large file (~5MB) with a small stack (~1K) with `Data.Text.IO.readFile`.

## Reproduce

```bash
$ stack build
$ dd if=/dev/zero of=large.bin bs=1M count=10
$ stack exec -- text-issue +RTS -K1K
```
