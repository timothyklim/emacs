#!/bin/bash

set -e

cabal update
cabal sandbox init
cabal install --upgrade ghc-mod structured-haskell-mode hasktags stylish-haskell hlint hindent hdevtools # ghci-ng

curl -o vendor/hindent.el https://raw.githubusercontent.com/chrisdone/hindent/master/elisp/hindent.el
