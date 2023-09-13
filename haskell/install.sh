#!/bin/sh

# Install GHC, cabal, stack and HLS
# We use the recommended versions by default
# If you need specific versions, either
#  1. Update the following variables
#  2. use `ghcup install` after installation

export BOOTSTRAP_HASKELL_MINIMAL=0
export BOOTSTRAP_HASKELL_NONINTERACTIVE=1 
export BOOTSTRAP_HASKELL_GHC_VERSION=recommended
export BOOTSTRAP_HASKELL_CABAL_VERSION=recommended
export BOOTSTRAP_HASKELL_INSTALL_STACK=1 
export BOOTSTRAP_HASKELL_INSTALL_HLS=1 
export BOOTSTRAP_HASKELL_ADJUST_BASHRC=P

curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh

echo '. $HOME/.ghcup/env' >> $HOME/.bashrc
