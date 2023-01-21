def "nu-complete quickpoeter rps" [] {
  [с п мс мс-п г н числ числ-п вводн межд предик предл союз сравн част ?]
}

export extern "quickpoeter" [
  --debug(-d)                   # print all subdistances
  --help(-h)                    # print help information
  --measure(-m): int            # measure distance to given word
  --top-n(-n)                   # number of returned best matches
  --rps(-r): string@"nu-complete quickpoeter rps" # remove some parts of speech separated with "+"
  word: string
]
