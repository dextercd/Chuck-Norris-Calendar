#!/bin/sh
grep 'j$' jokes.csv | grep -o '^[^|]*' | tr � \' | sed 's/^"\(.*\)"$/\1/' | sed 's/""/"/g' | sort -u | sort -R
