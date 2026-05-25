#!/bin/bash

PRINT_HEADER(){
    echo "===================================="
    echo "  $1  "
    echo "===================================="
}

CHECK_STATUS(){
    if [ $? -ne 0 ]; then
        echo "FAILURE: $PACKAGE installation failed"
        exit 1
    else
        echo "SUCCESS: $PACKAGE installed"
    fi        
}


INSTALL_PACKAGE(){
    PACKAGE=$1
    dnf list installed "$PACKAGE" > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "$PACKAGE is already installed"
    else
        dnf install "$PACKAGE" -y
    fi
}

PRINT_HEADER "Installing Packages"
INSTALL_PACKAGE git
INSTALL_PACKAGE wget
INSTALL_PACKAGE curl