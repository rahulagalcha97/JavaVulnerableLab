#!/bin/bash
#script to check whether gitleaks is present in the system or not

if which gitleaks >/dev/null; then
    echo exists
else
    export VER="1.24.0"
    wget https://github.com/zricethezav/gitleaks/releases/download/v$VER/gitleaks-linux-amd64
    mv gitleaks-linux-amd64 gitleaks
    chmod +x gitleaks
    sudo mv gitleaks /usr/local/bin/
    gitleaks --version
fi
