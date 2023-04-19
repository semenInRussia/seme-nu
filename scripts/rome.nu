def "nu-complete rome quote-properties" [] {
  ["as-needed" "preserve"]
}

def "nu-complete rome ci semicolons" [] {
  ["always" "as-needed"]
}

def "nu-complete rome ci indent-style" [] {
  ["tabs" "space"]
}

def "nu-complete rome ci quote-style" [] {
  ["single" "double"]
}

def "nu-complete rome ci trailing-comma" [] {
  ["all" "es5" "none"]
}

# Run the JS/TS linter on a set of files
export extern "rome check" [
  ...inputs: path               # Files to check
  --apply                       # Apply safe autofixes
  --apply-suggested             # Apply safe and suggested autofixes
  --verbose                     # Print the debug information too
  --help                        # Print the "rome check" usage
]
# Run the linter and check the formatting of a set of files
export extern "rome ci" [
    ...inputs: path               # Files to check
    --verbose                     # Print additional verbose advices on diagnostics
    --indent-style: string@"nu-complete rome ci indent-style"
    --indent-size: number         # If the indentation style is set to spaces, determine how many spaces should be used for indentation (default: 2)
    --line-width: number          # Change how many characters the formatter is allowed to print in a single line
    --quote-style: string@"nu-complete rome ci indent-style"  # Changes the quotation character for strings
    --trailing-comma: string@"nu-complete rome ci trailing-comma" # Changes trailing commas in multi-line comma-separated syntactic structures
    --semicolons: string@"nu-complete rome ci semicolons" # Changes when to print semicolons for statements (default: always)
    --help                        # Print the "rome check" usage
]

# Run the formatter on a set of files
export extern "rome format" [
  --write                                  # Edit the files in place (beware!) instead of printing the diff to the console
  --skip-errors                            # Skip over files containing syntax errors instead of emitting an error diagnostic.
  --max-diagnostics                        # Cap the amount of diagnostics displayed (default: 50)
  --verbose                                # Print additional verbose advices on diagnostics
  --indent-style: string@"nu-complete rome ci indent-style" # Change the indention character (default: tabs)
  --help                                   # Print the "rome check" usage
  --indent-size: number                    # If the indentation style is set to spaces, determine how many spaces should be used for indentation (default: 2)
  --line-width: number                     # Change how many characters the formatter is allowed to print in a single line (default: 80)
  --quote-style: string@"nu-complete rome ci quote-style" # Changes the quotation character for strings (default: double)
  --quote-properties: string@"nu-complete rome quote-properties"  # Changes when properties in object should be quoted (default: as-needed)
  --trailing-comma: string@"nu-complete rome ci trailing-comma"          # Changes trailing commas in multi-line comma-separated syntactic structures (default: all)
  --semicolons: string@"nu-complete rome ci semicolons"          # Changes when to print semicolons for statements (default: always)
  --stdin-file-path: path                # A file name with its extension to pass when reading from standard in, e.g. echo 'let a;' | rome format --stdin-file-path file.js
]
# Bootstrap a new Rome project
export extern "rome init" [ ]
# Start the Rome daemon server proccess
export extern "rome start" [ ]
# Stop the Rome daemon server proccess
export extern "rome stop" [ ]
# Rome Version
export extern "rome version" [ ]
# Print the help information about Rome
export extern "rome help" [ ]
