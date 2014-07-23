#!/bin/bash
app="dimwit"
localport="5008"
tag=""

case $1 in 
    bash)
       echo "----Starting bash Shell----"
        docker run --rm -it \
        -p $localport:8080 \
        -e "DEBUG=true" \
        -e "RELEASE=$tag" \
        -e "ENV=dev" \
        $app /bin/bash
    ;;
    *)
       echo "----Starting App----"
        docker run --rm -it \
        -p $localport:8080 \
        -e "DEBUG=true" \
        -e "RELEASE=$tag" \
        -e "ENV=dev" \
        $app
    ;;
esac

