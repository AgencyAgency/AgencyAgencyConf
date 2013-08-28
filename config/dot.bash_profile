# Set this to wherever you cloned the mudphone-s-terminal-helpers project.
export AGENCY_DIR="${HOME}/.agency"
export AGENCY_BIN="${AGENCY_DIR}/bin"
export AGENCY_CONFIG="${AGENCY_DIR}/config"

# ... add ports, local bin...
export PATH="/usr/local/bin:${HOME}/bin:${PATH}"

# My Settings:
export CLICOLOR=true
export EDITOR=emacs
export HISTTIMEFORMAT='%F %T '
export HISTSIZE=1000
export SAVEHIST=1000
shopt -s histappend
shopt -s histverify
shopt -s histreedit
shopt -s cmdhist

# BASH Completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Grep
# Warning:
#   Don't set this to 'always', as this will screw up Git submodule updates.
export GREP_OPTIONS='--color=auto'

# Set up ssh-agent if necessary:
[[ -s ${AGENCY_BIN}/set_ssh_agent.sh ]] && source ${AGENCY_BIN}/set_ssh_agent.sh

# Load Experiments:
[[ -s ${AGENCY_CONFIG}/.experiments ]] && source ${AGENCY_CONFIG}/.experiments

# Load Secret Settings:
[[ -s ${AGENCY_CONFIG}/secret/.profile_secrets ]] && source ${AGENCY_CONFIG}/secret/.profile_secrets

# Load profiles:
[[ -s ${HOME}/.bashrc ]] && source ${HOME}/.bashrc
# Symink local profile from AGENCY_CONFIG/.profile.local.* to .profile.local
[[ -s ${AGENCY_CONFIG}/.profile.local ]] && source ${AGENCY_CONFIG}/.profile.local

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
