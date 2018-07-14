# Directory history

When first introduced to UNIX, I used the shell to interact with the OS. I am sure that it has helped me create
my mental model for the file system. Very quickly I became a prolific user of the `history` command. Using the `!36` and `!!` were staples of my CLI flow.

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

I found myself traversing directory hierarchies and switching between directories again and again. I wondered why shells did not include a directory history. [autojump](https://github.com/wting/autojump) appears to have helped in this area. Many years ago, I wrote my own directory history. It is not packaged like autojump but offers a different interface, one that is somewhat modeled after the builtin `history` command.

I created a `dh` alias. My directory history command is interwoven in my dot files, specifically [.dirh_content](https://github.com/macdougt/bash-examples/blob/master/.dirh_content).

```bash
 /tmp > dh
  ...
  467) /usr/local/bin
  468) /data/dev/gitRepos
  469) /data/dev/gitRepos/examples/docker/articles
  470) /data/dev/gitRepos/examples/docker/articles/automation
  471) /data/dev/gitRepos/examples/docker/articles/automation/directory_history

/tmp > cdd 468
/data/dev/gitRepos > dh
  ...
  467) /usr/local/bin
  468) /data/dev/gitRepos/examples/docker/articles
  469) /data/dev/gitRepos/examples/docker/articles/automation
  470) /data/dev/gitRepos/examples/docker/articles/automation/directory_history
  471) /data/dev/gitRepos
```

In order to achieve this functionality, I overrode the builtin `cd` command. If you follow the `cd` function you will see how it works:

``` bash
# Override cd - change directory
function cd() {
   if [ -f "$*" ]
   then
      dir=$(dirname $*)
      builtin cd "$dir" && appendif "`pwd`";
   else
      if [ -z "$*" ]; then
        builtin cd ${HOME} && appendif "`pwd`";
      else
        builtin cd "$*" && appendif "`pwd`";
      fi
   fi
}
export -f cd
```

[appendif](https://github.com/macdougt/bash-examples/blob/master/utils/appendif) is written in Perl which I realize might be unpopular decision for some. This can easily be replaced by your own language of choice. Remember that I first wrote this a long time ago.

`cdd` is not simple either:

``` bash
cdd ()
{
    if [ -z "$1" ]; then
        dirHistoryFunction;
    else
        cd `getDir $*`;
    fi
}
```

`cdd` allows the user to specify a file, regular expression or exact match. It will iterate through the `~/.dir_history` file and find all matches. If there is only one match found, it will automatically change to the matched directory, otherwise it will present the user with the choices by number or letter.

``` bash
/tmp > cdd dev
Make your choice
List:
1  [t] /data/dev/library/Go/godev
2  [u] /dev
3  [v] /data/dev/docker/d_react_d3/test_dev
4  [w] /data/dev/docker/d_react/test_dev
5  [x] /data/dev/docker/d_/test_dev
6  [y] /data/dev/docker/d_react/test_dev
7  [z] /data/dev

```
