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
cabal install stylish-haskell
cabal install structured-haskell-mode
cabal install ghc-mod
# cabal install ghci-ng
# cabal install ghcid
# cabal install ide-backend
# cabal install HaRe
# cabal install hdevtools

go get -u github.com/nsf/gocode
