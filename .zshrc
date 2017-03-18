for file in ~/.{paths,prompt,exports,aliases,functions,extra,auths}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done

# Fish-like syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="pygmalion"

HIST_STAMPS="yyyy-mm-dd"
HISTFILE=~/.history
SAVEHIST=1000000
HISTSIZE=1000000
setopt SHARE_HISTORY

plugins=(git docker brew)

source $ZSH/oh-my-zsh.sh
