def filenames [] {
  ls | where type == file | get name
}

export extern "pf" [
  --pages: string
  --even(-e)
  --reversed(-r)
  --amount(-n): int
  --2side
  --help
  filename: string@filenames
]

def pp-subcommand [] {
  [cs]
}

export extern "pp" [
  --help(-h)
  subcommand: string@pp-subcommand
]

def pj-subcommand [] {
  [clear list c l]
}

export extern "pj" [
  --help(-h)
  subcommand: string@pj-subcommand
]
