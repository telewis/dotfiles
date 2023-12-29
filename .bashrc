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

## Setup shell prompt to include current k8s context and namespace.
##
export PS1="\]\033[1;34m\]\u[\033[1;37m\]@\[\033[1;34m\]\h\[\033[1;37m\]:\[\033[1;34m\]\W \]033[1;37m\]:: \[\033[0;32m\]\$(__kube_ps1_context)\]\033[1;37m\]:\[\033[0;33m\]\$(__kube_ps1_namespace)\[\033[1;37m\] \\$ \[\0"
