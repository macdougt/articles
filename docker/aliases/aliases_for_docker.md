Docker and aliases
------------------

Living a happy life often involves avoiding unnecessary time soaks like sitting in traffic whenever possible. The Zen minded might tell me to accept the struggle, but I even like saving seconds when possible. It led me to create some aliases and utilities to help save keystrokes when I use docker.

I have to admit that I did not know about bash completions for docker and the docker toolset when I first wrote the aliases and accompanying scripts. Also if you are squeamish about Perl, do not dig into the scripts.

I use dls, dockerkillexit, docb and docs frequently.

| command/alias   | Description           |
|-----------------|:---------------------:|
| `dls` |  `docker image ls; docker container ls -a` <br/>Lists all images and all containers (including stopped)|
| `dockerkillexit` |  `docker container ls -aq -f status=exited \| xargs docker rm` <br/>Kills (stops and removes) all exited containers|



