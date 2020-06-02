# can

can is a simple Zsh script that allows you to maintain a trash bin, as an alternative to simply `rm`ing files that you may regret deleting later.

```
can [ -e ] [ file ... ]
```

Invoking can moves the given files to `$CANDIR`, which defaults to `~/.trash`, first creating the directory if necessary.

The `-e` or `--empty` option empties the trash bin.

```
sudo install --owner=root --group=root can.zsh /usr/local/bin/can
or
install can.zsh ~/.local/bin/can
```
