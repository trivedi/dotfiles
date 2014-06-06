source ~/.zsh/aliases.zsh
source ~/.zsh/prompt.zsh
source ~/.zsh/colors.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function


autoload -U colors && colors
export SPROMPT="Correct $fg[red]%R$reset_color to $fg[green]%r?$reset_color (Yes, No, Abort, Edit) "

autoload -Uz compinit && compinit
setopt correct

export PATH="/usr/local/Cellar/ruby/2.0.0-p0/lib/ruby/gems/2.0.0:$PATH"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Include current directory in PATH--keep current directory at end of PATH for security reasons
export PATH="$PATH:."
