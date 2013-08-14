. ${AGENCY_BIN}/.git-completion.sh
if [ "${TERM}" = "dumb" ]; then
  # Set emacs term prompt:
  PS1="\n\
[\u@\h \w\$(__git_ps1 \" (%s)\")]\n\
\d \t\n\
\! $ "
else
  # Set xterm-color prompt:
  PS1="\n\
\[\e]2;${PWD}\a\]\
[\e[4m\u@\h\e[m \w\$(__git_ps1 \" (%s)\")]\n\
\d \t\n\
\! \$ "
fi

