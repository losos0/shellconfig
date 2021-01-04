alias ls='ls -A'
PROMPT_COMMAND="echo -n \$(date '+%Y-%m-%d %H:%M:%S %Z') $$ >> ~/hist.txt; fc -ln -1 >> ~/hist.txt"
gh() { grep $* ~/hist.txt; }
