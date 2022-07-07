#!/bin/env bash

sudo apt install -y git
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.0

# If only python3 is installed
sudo apt install -y python-is-python3
asdf plugin add gcloud https://github.com/jthegedus/asdf-gcloud
asdf install gcloud latest
asdf global gcloud latest

