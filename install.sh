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
cabal install structured-haskell-mode
cabal install ghc-mod
cabal install stylish-haskell
# cabal install ghci-ng
# cabal install ghcid
# cabal install ide-backend
# cabal install HaRe
# cabal install hdevtools

go get -u github.com/nsf/gocode
go get -u golang.org/x/tools/cmd/godoc
go get -u golang.org/x/tools/cmd/vet
go get -u github.com/golang/lint/golint
