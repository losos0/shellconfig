# Install with <shell> install.sh
if [ -n "$ZSH_NAME" ]; then
    rc="$HOME/.zshrc"
    script="$1"
elif [ -n "$BASH" ]; then
    rc="$HOME/.bashrc"
    script="$0"
else
    echo 'Unknown shell' && exit 1
fi

touch "$rc"
grep -q '^source .*bashrc\.sh$' "$rc" && echo 'already installed?' && exit
printf 'source %q\n' "$(cd "$(dirname "$script")"; pwd)/bashrc.sh" >> "$rc"
