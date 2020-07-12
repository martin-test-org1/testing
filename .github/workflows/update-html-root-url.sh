#!/bin/bash

set -x

NAME=$1
VERSION=$2

echo "Name: $NAME"
echo "Version: $VERSION"

sed -i -e 's|html_root_url = "https://docs.rs/'$NAME'/[^"]\+"'\
           '|html_root_url = "https://docs.rs/'$NAME'/'$VERSION'"|' \ src/*.rs
