export EDITOR="vim"
export TERM="xterm"

if [[ -d "$HOME/bin" ]]; then
   export PATH="$HOME/bin:$PATH"
fi

if [[ -d "$HOME/.local/bin" ]]; then
   export PATH="$HOME/.local/bin:$PATH"
fi

if [[ -f /usr/local/bin/virtualenvwrapper.sh ]]; then
   export WORKON_HOME="$HOME/.virtualenvs"
   export PROJECT_HOME="$HOME/dev"
   source /usr/local/bin/virtualenvwrapper.sh
   alias v="workon"
fi

# https://github.com/syl20bnr/spacemacs/tree/develop/layers/+tags/gtags
export GTAGSLABEL=pygments

if [[ -d "$HOME/.cargo/bin" ]]; then
   export PATH="$HOME/.cargo/bin:$PATH"
fi

if [[ -d "$HOME/.nix-profile/bin" ]]; then
   export PATH="$HOME/.nix-profile/bin:$PATH"
fi
