# If you come from bash you might have to change your $PATH.
addToPathFront /usr/local/sbin
addToPathFront /usr/local/bin
addToPathFront $HOME/bin

# Go
export GOBIN=$HOME/bin

# rbenv setup
which -s rbenv 2>&1 >/dev/null && eval "$(rbenv init -)"

# pyenv setup
export PYENV_ROOT="$HOME/.pyenv"
addToPath $PYENV_ROOT/bin

# which -s pyenv 2>&1 >/dev/null && "$(pyenv init --path)"

# FZF setup
test -f ~/.fzf.zsh && source ~/.fzf.zsh

# NVM setup
export NVM_DIR="$HOME/.nvm"
test -s "/usr/local/opt/nvm/nvm.sh" && . "/usr/local/opt/nvm/nvm.sh"                                       # This loads nvm
test -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Console Ninja
test -d "~/.console-ninja" && addToPath ~/.console-ninja/.bin


# 1Password
if [ -f /mnt/c/Users/dyoung/AppData/Local/Microsoft/WinGet/Links/op.exe ]; then
	alias op=/mnt/c/Users/dyoung/AppData/Local/Microsoft/WinGet/Links/op.exe
fi

# Additional evals
which -s fzf     2>&1 >/dev/null && eval "$(fzf --zsh)"
which -s zoxide  2>&1 >/dev/null && eval "$(zoxide init --cmd cd zsh)"

