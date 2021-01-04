alias ls='ls -A'
# bash
PROMPT_COMMAND="echo -n \$(date '+%Y-%m-%d %H:%M:%S %Z') $$ >> ~/hist.txt; fc -ln -1 >> ~/hist.txt"
# zsh
precmd() { eval "$PROMPT_COMMAND"; }
gh() { grep $* ~/hist.txt; }
