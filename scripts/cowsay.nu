
# Display Saying Cow
export extern "cowsay" [
  --help(-h)                    # show help info about this command and halt
  -e: string                    # cow's eyes string (defaults to "oo")
  -T: string                    # cow's tongue string (defaults to "  ")
  -W: number                    # roughly where the message should be wrapped
  -f: string@"nu-complete cowsay -f" # file name defining cow
  --think                       # thinking cow, instead saying
  -b                            # Mode: Borg
  -d                            # Mode: Dead
  -g                            # Mode: Greedy
  -p                            # Mode: Paranoia
  -s                            # Mode: Stoned
  -t                            # Mode: Tired
  -w                            # Mode: Wired
  -n                            # the given message will not be word-wrapped.
  -r                            # select a random cow
  -l                            # list all files defining cow
  text?: string                 # words which cow will say
]

def "nu-complete cowsay -f" [] {
  cowsay -l | str replace -a '  ' "\n" | lines
}
