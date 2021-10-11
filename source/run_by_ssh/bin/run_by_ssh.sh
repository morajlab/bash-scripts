#!/bin/bash

# $1 is username
# $2 is command(s)
sudo -H -u $1 bash -i -c "$(echo $2)"