#!/bin/bash

set -e

cabal update
cabal sandbox init
cabal install happy
cabal install alex
cabal install ghc-mod
cabal install structured-haskell-mode
cabal install happy
cabal install hasktags
cabal install present
cabal install hlint
cabal install hoogle
cabal install hindent # ghci-ng
cabal install stylish-haskell
