export extern "eldev build" [
  target?: string@"nu-complete eldev build"
  --help(-h)                    # the help message
  --load-before-compiling(-l)   # load before compiling them
  --dont-load-before-compiling(-l)   # don't load before compiling them
  --keep-going(-k)                   # keep building even if a target failed
  --warnings-as-errors(-W)
  --suppress-warnings(-w)
  --force(-f)                   # force building of target even if it appears up-to-date
  --new(-N)                     # consider file infintenly new
  --dry-run(-n)                 # don't build, just for messages
]

export extern "eldev clean" [
  --help(-h)
  --dont-delete(-n)             # don't delete, print filenames to delete
  --list(-L)                    # list available cleaners and exit
]

def "nu-complete eldev build" [] {
  ^eldev targets | lines | where ($it | str starts-with :)
}
