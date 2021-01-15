if [ -n "$ZSH_NAME" ]; then
    rc="$HOME/.zshrc"
elif [ -n "$BASH" ]; then
    rc="$HOME/.bashrc"
else
    echo 'Unknown shell' && exit 1
fi

touch "$rc"
grep -q '^source .*bashrc\.sh$' "$rc" && echo 'already installed?' && exit
printf 'source %q\n' "$(cd "$(dirname "$1")"; pwd)/bashrc.sh" >> "$rc"
