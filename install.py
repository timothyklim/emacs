#!/usr/bin/env python3

import os, argparse
from subprocess import call

cwd = os.path.dirname(os.path.realpath(__file__))
cabal_sandbox_cwd = "%s/cabal-sandbox" % cwd

parser = argparse.ArgumentParser()
parser.add_argument("--force", action='store_true')
args = parser.parse_args()
if args.force:
  print("Clean cabal sandbox...\n")
  call(["rm", "-rf", cabal_sandbox_cwd])
  call(["mkdir", "-p", cabal_sandbox_cwd])
  call(["cabal", "update"])

cabal_bin_directory = ("%s/.bin" % cabal_sandbox_cwd)
call(["mkdir", "-p", cabal_bin_directory])

haskell_deps = {
  "misc" : [
    "happy",
    "hasktags",
    "hlint",
    "hoogle",
    "hindent"
  ],
  "shm": [
    "happy",
    "structured-haskell-mode"
  ],
  "sh": [
    "happy",
    "stylish-haskell"
  ],
  "ghc-mod": [
    "happy",
    "ghc-mod"
  ],
  "hdevtools": ["hdevtools"],
  # "HaRe": ["HaRe"],
  "ghcid": ["ghcid"],
  # "ghci-ng": ["ghci-ng"],
  "ide": [
    "happy",
    "ide-backend"
  ]
}

for k, pkgs in haskell_deps.items():
  print("Install %s: %s" % (k, pkgs))
  sandbox_cwd = "%s/%s" % (cabal_sandbox_cwd, k)
  call(["mkdir", "-p", sandbox_cwd])
  os.chdir(sandbox_cwd)
  call(["cabal", "sandbox", "init"])
  for pkg in pkgs:
    call([
      "cabal",
      "install",
      "--upgrade-dependencies",
      "--jobs=8",
      "--force-reinstalls",
      "--max-backjumps=1",
      pkg
    ])

  bin_directory = "%s/.cabal-sandbox/bin" % sandbox_cwd
  for app in os.listdir(bin_directory):
    call([
      "ln",
      "-snf",
      ("%s/%s" % (bin_directory, app)),
      ("%s/%s" % (cabal_bin_directory, app))
    ])

  print("\n\n")

os.chdir(cwd)

go_deps = [
  "github.com/nsf/gocode",
  "golang.org/x/tools/cmd/godoc",
  "golang.org/x/tools/cmd/vet",
  "github.com/golang/lint/golint"
]

for pkg in go_deps:
  call(["go", "get", "-u", pkg])
