#!/bin/bash
#script to check whether gitleaks is present in the system or not

if which gitleaks >/dev/null; then
    echo exists
else
    wget https://github.com/zricethezav/gitleaks/releases/download/v6.2.0/gitleaks-linux-amd64
    mv gitleaks-linux-amd64 gitleaks
    chmod +x gitleaks
    sudo mv gitleaks /usr/local/bin/
    gitleaks --version
fi
