alias ls='ls -A'
# bash
PROMPT_COMMAND="echo -n \$(date '+%Y-%m-%d %H:%M:%S %Z') $$ >> ~/hist.txt; fc -ln -1 >> ~/hist.txt"
# zsh
preexec() {
    echo $(date '+%Y-%m-%d %H:%M:%S %Z') $$ " $1" >> ~/hist.txt
}
gh() { grep $* ~/hist.txt; }
