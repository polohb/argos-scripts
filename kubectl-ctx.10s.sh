#!/bin/bash

# Desc : kubectl context information
# current context in bar
# menu to switch context

# Be sure that kubectl is installed 

CURRENT_CTX=$(kubectl config current-context)
echo "kctx : $CURRENT_CTX" 
echo "---"

ALL_CTX=$(kubectl config get-contexts --no-headers=true | tr -s ' ' | cut -d ' ' -f2)
while IFS= read -r line; do
    echo "$line | bash='kubectl config use-context $line ' terminal=false refresh=true"
done <<< "$ALL_CTX"


