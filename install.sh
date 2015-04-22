#!/bin/bash

set -e

rm -rf cabal.sandbox.config .cabal-sandbox

cabal update
cabal sandbox init
cabal install happy
cabal install alex
cabal install hasktags
cabal install hlint
cabal install hoogle
cabal install hindent
cabal install hdevtools
cabal install stylish-haskell
cabal install ghci-ng
cabal install ghcid
cabal install structured-haskell-mode
cabal install ide-backend
cabal install HaRe
cabal install ghc-mod
