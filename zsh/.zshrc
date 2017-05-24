if [ -f ~/.zsh_aliases ]; then
	source ~/.zsh_aliases
fi

if [ -f ~/.profile ]; then
	source ~/.profile
fi

# antigen ######################################
source $HOME/.antigen.zsh

antigen use oh-my-zsh

antigen bundle mafredri/zsh-async
antigen bundle git
antigen bundle command-not-found
antigen bundle pip
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions src
antigen bundle marszall87/lambda-pure

antigen apply

