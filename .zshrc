for file in ~/.{paths,prompt,exports,aliases,functions,extra,auths}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done


path+=($HOME/bin)

# Fish-like syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="pygmalion"
#ZSH_THEME="agnoster"

HIST_STAMPS="yyyy-mm-dd"
HISTFILE=~/.history
SAVEHIST=1000000
HISTSIZE=1000000
setopt SHARE_HISTORY

plugins=(git docker brew kubectl go)

source $ZSH/oh-my-zsh.sh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

#Enbale kubectl promt
autoload -U colors; colors
source /usr/local/etc/zsh-kubectl-prompt/kubectl.zsh
zstyle ':zsh-kubectl-prompt:' namespace false
RPROMPT='%{$fg[blue]%}$ZSH_KUBECTL_PROMPT%{$reset_color%}'

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/Cellar/terraform/0.11.7/bin/terraform terraform

command -v vg >/dev/null 2>&1 && eval "$(vg eval --shell zsh)"
