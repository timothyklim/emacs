#!/bin/bash

set -e

cabal update
cabal install ghci-ng ghc-mod structured-haskell-mode hasktags stylish-haskell
