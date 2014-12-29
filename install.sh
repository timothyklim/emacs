#!/bin/bash

set -e

cabal update
cabal sandbox init
cabal install ghc-mod
cabal install structured-haskell-mode
cabal install happy
cabal install hasktags
cabal install stylish-haskell
cabal install present
cabal install hlint
cabal install hoogle
cabal install hindent # ghci-ng

curl -o vendor/hindent.el https://raw.githubusercontent.com/chrisdone/hindent/master/elisp/hindent.el
