export extern "pf" [
  --pages: string
  --even(-e)
  --reversed(-r)
  --amount(-n): int
  --2side
  --help
  filename: string
]

def pp-subcommand [] {
  [
    cs
  ]
}

export extern "pp" [
  --help(-h)
  subcommand: string@pp-subcommand
]

export extern "pj" [
  --help(-h)
  subcommand: string@pj-subcommand
]

def "pj list" [] {
  ^pj list
  | lines
  | parse "{id}. <{timestamp}>   {printed_pages}/{total_pages}          {filename}"
}

alias "pj l" = pj list

def pj-subcommand [] {
  [
    clear list c l
  ]
}
