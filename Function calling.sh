#!/bin/bash
hello() {
    if [ -f /etc/lsb-release ]; then
        VER=$(cat /etc/lsb-release | grep -i DISTRIB_RELEASE | cut -d "=" -f2)
        if [ $VER == 18.04 ]; then
            echo "18.04"

        else
            echo "Its not 18.04 version"
        fi
    else
        echo " seems not 18.04 "
    fi
}

create_file() {
    OUTPUT=$(hello)
    echo "From $OUTPUT"
    OS='18.04'
    if [ "$OUTPUT" == "$OS" ]; then
        echo "Running Update"
        apt update -y
    else
        echo "no update for this "
    fi
}

create_file
