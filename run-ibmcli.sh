docker build -t ibm-commandline .
docker run -it -v /var/run/docker.sock:/var/run/docker.sock -v ~/bluemix:/root/.bluemix ibm-commandline bash
