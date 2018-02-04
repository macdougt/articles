wget https://raw.githubusercontent.com/macdougt/bash-examples/master/.docker_content -O .docker_content
wget https://raw.githubusercontent.com/macdougt/bash-examples/master/.dc_content -O .dc_content
wget https://raw.githubusercontent.com/macdougt/bash-examples/master/.dm_content -O .dm_content
wget https://raw.githubusercontent.com/macdougt/bash-examples/master/.dr_content -O .dr_content

if [ ! -e /usr/local/bin/docb ]; then
  echo "Grabbing docb and putting it in /usr/local/bin/docb"
  wget https://raw.githubusercontent.com/macdougt/docker-examples/master/docb -O /usr/local/bin/docb
  chmod 755 /usr/local/bin/docb
fi

if [ ! -e /usr/local/bin/docs ]; then
  echo "Grabbing docs and putting it in /usr/local/bin/docs"
  wget https://raw.githubusercontent.com/macdougt/docker-examples/master/docs -O /usr/local/bin/docs
  chmod 755 /usr/local/bin/docs
fi


