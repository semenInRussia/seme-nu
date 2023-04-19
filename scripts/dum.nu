# install a node.js tool using dum
export extern "dum install" [
  --global(-g)                  # install a tool globally
  --save-dev(-D)                # install a tool as tool for the develop
  --save-prod                   # install a tool as tool for the production
  ...tool: string               # tools names to install (if missed, install project's dependecies)
]

alias "dum i" = dum install
alias "dum in" = dum install
alias "dum inst" = dum install
alias "dum insta" = dum install
alias "dum instal" = dum install
alias "dum add" = dum install

def "nu-complete dum run" [] {
  open ./package.json
  | get scripts
  | columns
}

# run a command from the `package.json` using dum
export extern "dum run" [
  command: string@"nu-complete dum run"
  --workspace(-w)
  --include-workspace-root
  --if-present
  --ignore-scripts
  --script-shell
]
