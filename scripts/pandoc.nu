def "nu-complete pandoc from" [] {
  ^pandoc --list-input-formats | lines
}

def "nu-complete pandoc to" [] {
  ^pandoc --list-output-formats | lines
}

export extern "pandoc" [
  --from(-f): string@"nu-complete pandoc from"  # name of the input format
  --read(-r): string@"nu-complete pandoc from"  # name of the input format
  --to(-t): string@"nu-complete pandoc to"      # name of the output format
  --write(-w): string@"nu-complete pandoc to"   # name of the output format
  --output(-o): string                          # filename for the output
  -M: string                                    # metadata KEY[:value]
  --defaults(-d): string                        # defaults file?
  --standalone(-s)                              # make standalone file?
  --sandbox                                     # run Pandoc in sandbox
  --number-sections(-N)                         # view number of sections
  -H: string                                    # include in header
  --verbose                                     # give verbose debugging output
  --quiet                                       # supress warning messages
  --fail-if-warnings                            # exit with errors if there are any warnings
  --list-input-formats                          # view list of the input formats
  --list-output-formats                         # view list of the output formats
  --help(-h)                                    # print help usage
  --version(-v)                                 # print the pandoc version
  --strip-empty-paragraphs                      # strip empty paragraphs
  -F: string                                    # program filtering the Pandoc AST
  -L: string                                    # Lua filter
  -p                                            # preserve tabs
  --table-of-contents                           # make table of contents
  --toc                                         # make table of contents
  --strip-comments                              # strip out comments of the source
  --B: string                                   # filename/URL of the source locating before the file content
  --ascii                                       # use only ascii files
  --html-q-tags                                 # use <q> for quoting in HTML
  --section-divs                                # use <section> for sections in HTML
  -T                                            # title prefix
  --css(-c)                                     # filename/URL to CSS file for HTML
  filename?: string                             # filename of the source file
]
