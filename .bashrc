#!/bin/bash

set -o vi

## Update PATH variable
##
export PATH=${PATH}:/usr/local/bin

## Setup prompt to include kube context
##
if [ -f /usr/local/bin/kube-prompt.sh ]; then
  source /usr/local/bin/kube-prompt.sh
fi
