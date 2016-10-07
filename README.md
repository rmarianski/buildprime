# Docker container to test building primeserver packages

## Create the image

    docker build -t buildprime .

## Run the build

    docker run buildprime

## Debug

    docker run -it buildprime /bin/bash
