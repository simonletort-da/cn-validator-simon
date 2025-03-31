#!/bin/bash

## Canton Validator docker-compose requirements based on https://docs.dev.sync.global/validator_operator/validator_compose.html#requirements

## Install Homebrew package manager on Mac
# Check for Homebrew and install if not present
if ! command -v brew &>/dev/null; then
    echo "Homebrew not found. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew is already installed."
fi
# Update Homebrew
echo "Updating Homebrew..."
brew update

## Install cURL via Homebrew
# Install curl if not already installed
if ! brew list curl &>/dev/null; then
    echo "curl is not installed. Installing curl..."
    brew install curl
else
    echo "curl is already installed."
fi

## Install jq via Homebrew
# Install jq if not already installed
if ! brew list jq &>/dev/null; then
    echo "jq is not installed. Installing jq..."
    brew install jq
else
    echo "jq is already installed."
fi

## Install docker-compose via Homebrew
# Install docker-compose if not already installed
if ! command -v docker-compose &>/dev/null; then
    echo "docker-compose is not installed. Installing docker-compose..."
    brew install docker-compose
else
    echo "docker-compose is already installed."
fi
