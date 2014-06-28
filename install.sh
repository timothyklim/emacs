#!/bin/bash

set -e

cabal update
cabal install ghc-mod structured-haskell-mode hasktags stylish-haskell # ghci-ng
