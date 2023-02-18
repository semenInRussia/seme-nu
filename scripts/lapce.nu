def-env lapce-plug [] {
  let name = (open Cargo.toml | get package.name)
  let project = ($env.PWD)
  let wasm = $"($project | path join target wasm32-wasi debug $name).wasm"
  let volt = ($project | path join "volt.toml")

  echo $" - Project Name: ($name)"
  echo $" - WASM file: ($wasm)"
  echo $" - Volt file: ($volt)"

  echo '> cargo build'
  cargo build

  echo "> Go to the plugins directory"
  cd ~/AppData/local/lapce/Lapce-Stable/data/plugins
  mkdir $name
  cd $name

  echo "> Remove all from the plugin directory"
  touch l.txt
  rm * -r

  echo "> Linking plugin"
  ln -s $wasm .

  echo $"> cp ($volt) ."
  ^cp $volt .

  echo "> Finished!!!"
  cd $project
}
