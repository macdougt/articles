Directory history
-----------------

When first introduced to UNIX, I used the shell to interact with the OS. I am sure that it has helped me create
my mental model for the file system. Very quickly I became a prolific user of the `history` command. Using the !36 and !! were staples of my CLI flow.

```bash
# history
  ...
  30  git pull
  31  cd automation
  32  ls
  33  cd directory_history/
  34  ls
  35  code .
  36  history

# !36
  ...
  30  git pull
  31  cd automation
  32  ls
  33  cd directory_history/
  34  ls
  35  code .
  36  history
  37  history
```


> !36 will execute the command 36 of the history command which is history in this case

