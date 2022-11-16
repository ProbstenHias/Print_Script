#!/bin/bash

if [ -z "$1" ]; then
    echo "usage: ./print-uni uniuser filename"
    exit 1
fi

UNIUSER="$1"

TARGET=$UNIUSER@marvin.informatik.uni-stuttgart.de

if [ -z "$2" ]; then
    echo "usage: ./print-zarquon uniuser filename"
    exit 1
fi

FILE="$2"

PRINTER=${3:-zarquon}

FILENAME=$(basename $FILE)

echo "PRINTING: $FILE @ $PRINTER at $TARGET"

scp $FILE $TARGET:/tmp
ssh $TARGET "lp -d $PRINTER /tmp/$FILENAME"