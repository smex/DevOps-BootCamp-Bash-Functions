#!/bin/bash

pow() {
    echo $(($1**$2))
}

shortest() {
    local len=32768
    for i; do
        if [ $len -gt ${#i} ]; then
            len=${#i}
        fi
    done

    for i; do
        if [ $len -eq ${#i} ]; then
            echo $i
        fi
    done
}

print_log() {
    echo "[$(date '+%Y-%m-%d %H:%m')] $1"
}