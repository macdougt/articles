Docker and aliases
------------------

Living a happy life often involves avoiding unnecessary time soaks like sitting in traffic whenever possible. The Zen minded might tell me to accept the struggle, but I even like saving seconds when possible. It led me to create some aliases and utilities to help save keystrokes when I use docker.

I have to admit that I did not know about bash completions for docker and the docker toolset when I first wrote the aliases and accompanying scripts. Also if you are squeamish about Perl, do not dig into the scripts.

The [get_content.sh](get_content.sh) script will fetch the files to include and the [.profile](.profile) includes the snippet to include the files. I use `dls`, `dockerkillexit`, `docb` and `docs` frequently.

Here is a screencast that shows some of the aliases:
[![asciicast](https://asciinema.org/a/161002.png)](https://asciinema.org/a/161002)
*recorded with [asciinema](https://asciinema.org/)*

| command/alias   | Description           |
|-----------------|:----------------------|
| `dls` |  `docker image ls; docker container ls -a` <br/>Lists all images and all containers (including stopped)|
| `dockerkillexit` |  `docker container ls -aq -f status=exited \| xargs docker rm` <br/>Kills (stops and removes) all exited containers|
| `docb` | Runs perl script that produces a numbered list of all running containers, giving the user the choice of which to enter with bash. If only one is returned, it will enter it by default. |
| `docs` |  Runs perl script that produces a numbered list of all images, giving the user the choice of which to start with bash. If only one is returned, it will start it by default.|

There are other aliases in the dot files which I have found useful.
