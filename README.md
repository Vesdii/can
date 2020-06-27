# can

can is a simple C program that allows users to maintain a trash bin, as an alternative to simply `rm`ing files that they may regret deleting later.

```
can [ -e ] [ file ... ]
```

Invoking can moves the given files to `$CANDIR`, which defaults to `~/.trash`, first creating the directory if necessary.

The `-e` or `--empty` option empties the trash bin.

```
sudo make install
```
