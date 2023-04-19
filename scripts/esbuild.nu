def "nu-complete esbuild --target" [] {
  [es2017 chrome58 firefox57 safari11 edge16 node10 ie9 opera45]
}

def "nu-complete esbuild --format" [] {
  [iife cjs esm]
}

def "nu-complete esbuild --platform" [] {
  [browser node neutral]
}

export extern "esbuild" [
  file: path
  --bundle              # Bundle all dependencies into the output files
  --external: string    # Exclude module M from the bundle (can use * wildcards)
  --format: string@"nu-complete esbuild --format"          # Output format
  --minify              # Minify the output (sets all --minify-* flags)
  --outdir: path        # The output directory (for multiple entry points)
  --outfile: path       # The output file (for one entry point)
  --platform:string@"nu-complete esbuild --platform" # Platform target
  --serve: string       # Start a local HTTP server on this host:port for outputs
  --sourcemap           # Emit a source map
  --splitting           # Enable code splitting (currently only for esm)
  --target: string@"nu-complete esbuild --target" # Environment target
  --watch               # Watch mode: rebuild on file system changes
  --allow-overwrite     # Allow output files to overwrite input files
  --analyze             # Print a report about the contents of the bundle
  --asset-names: path   # Path template to use for "file" loader files (default "[name]-[hash]")
  --banner: string      # Text to be prepended to each output file of type T where T is one of: css | js
  --certfile: path      # Certificate for serving HTTPS (see also "--keyfile")
  --color: bool         # Force use of color terminal escapes (true | false)
  --drop str            # Remove certain constructs (console | debugger)
  --footer: string      # Text to be appended to each output file of type T where T is one of: css | js
  --ignore-annotations  # Enable this to work with packages that have incorrect tree-shaking annotation
  --jsx-dev             # Use React's automatic runtime in development mode
  # --jsx-fragment=...    # What to use for JSX instead of React.Fragment
  # --jsx-import-source=..# Override the package name for the automatic runtime (default "react")
  --jsx-side-effects    # Do not remove unused JSX expressions
  # --jsx=...             # Set to "automatic" to use React's automatic runtime or to "preserve" to disable transforming JSX to JS
  --keep-names          # Preserve "name" on functions and classes
  # --keyfile=...         # Key for serving HTTPS (see also "--certfile")
  # --legal-comments=...  # Where to place legal comments (none | inline | eof | linked | external, default eof when bundling and inline otherwise)
  # --log-level=...       # Disable logging (verbose | debug | info | warning | error | silent, default info)
  # --log-limit=...       # Maximum message count or 0 to disable (default 6)
  # --log-override:X=Y    # Use log level Y for log messages with identifier X
  # --main-fields=...     # Override the main file order in package.json (default "browser,module,main" when platform is browser and "main,module" when platform is node)
  # --mangle-cache=...    # Save "mangle props" decisions to a JSON file
  # --mangle-props=...    # Rename all properties matching a regular expression
  # --mangle-quoted=...   # Enable renaming of quoted properties (true | false)
  # --metafile=...        # Write metadata about the build to a JSON file (see also: https://esbuild.github.io/analyze/)
  --minify-whitespace   # Remove whitespace in output files
  --minify-identifiers  # Shorten identifiers in output files
  --minify-syntax       # Use equivalent but shorter syntax in output files
  # --out-extension:.js=.m# Use a custom output extension instead of ".js"
  # --outbase=...         # The base path used to determine entry point output paths (for multiple entry points)
  --preserve-symlinks   # Disable symlink resolution for module lookup
  # --public-path=...     # Set the base URL for the "file" loader
  # --pure:N              # Mark the name N as a pure function for tree shaking
  # --reserve-props=...   # Do not mangle these properties
  # --resolve-extensions=.# A comma-separated list of implicit extensions (default ".tsx,.ts,.jsx,.js,.css,.json")
  # --servedir=...        # What to serve in addition to generated output files
  # --source-root=...     # Sets the "sourceRoot" field in generated source maps
  # --sourcefile=...      # Set the source file for the source map (for stdin)
  # --sourcemap=external  # Do not link to the source map with a comment
  # --sourcemap=inline    # Emit the source map with an inline data URL
  --sources-content: bool # Omit "sourcesContent" in generated source maps
  # --supported:F=...     # Consider syntax F to be supported (true | false)
  --tree-shaking: bool    # Force tree shaking on or off (false | true)
  --tsconfig: path        # Use this tsconfig.json file instead of other ones
  --version               # Print the current version (0.17.17) and exit
]
