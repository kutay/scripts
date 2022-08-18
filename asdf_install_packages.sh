#!/bin/env bash

install_latest() {
  REPO=$2
  PACKAGE=$1

  asdf plugin add $PACKAGE $REPO
  asdf install $PACKAGE latest
  asdf global $PACKAGE latest
}

install_latest helm https://github.com/Antiarchitect/asdf-helm.git
install_latest nodejs https://github.com/asdf-vm/asdf-nodejs.git
install_latest deno https://github.com/asdf-community/asdf-deno.git
install_latest cue https://github.com/asdf-community/asdf-cue.git
install_latest terraform https://github.com/asdf-community/asdf-hashicorp.git
install_latest checkov https://github.com/bosmak/asdf-checkov.git


asdf plugin list --urls
