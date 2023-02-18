# install a node.js tool
export extern "npm install" [
  --global(-g)                  # install a tool globally
  --save-dev                    # install a tool as tool for the develop
  --save-prod                   # install a tool as tool for the production
  ...tool: string               # tools names to install (if missed, install project's dependecies)
]

alias "npm i" = npm install
alias "npm in" = npm install
alias "npm inst" = npm install
alias "npm insta" = npm install
alias "npm instal" = npm install
alias "npm add" = npm install


def "nu-complete npm run" [] {
  open ./package.json
  | get scripts
  | columns
}

export extern "npm run" [
  command: string@"nu-complete npm run"
  --workspace(-w)
  --include-workspace-root
  --if-present
  --ignore-scripts
  --script-shell
]
