alias em='open /Applications/Emacs.app'
alias ec='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient'
alias ecn='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -n'
alias emin='/usr/local/bin/emacs -nw --no-init-file --no-site-file --load ~/.emacs.minimal'

# Homebrew
source `brew --prefix`/Library/Contributions/brew_bash_completion.sh

# Set the prompt.
. ${AGENCY_BIN}/set_prompt.sh

# Webby stuff.
function serve {
  port="${1:-3000}"
  ruby -r webrick -e "s = WEBrick::HTTPServer.new(:Port => $port, :DocumentRoot => Dir.pwd); trap('INT') { s.shutdown }; s.start"
}

# Helpful Aliases:
alias ls='ls -h'
alias ll='ls -las'
alias listproc='ps -Ahj'
alias listcpu='ps -Ahvr | more'
alias listmem='ps -Ahlm | more'
alias gitst='git status'
alias gitdiff='git diff --no-ext-diff'
alias ghub='/usr/local/bin/github'

# Functions
function lt() { ls -ltrsa "$@" | tail; }
function psgrep() { ps axu | grep -v grep | grep "$@" -i --color=auto; }
function fname() { find . -iname "*$@*"; }
