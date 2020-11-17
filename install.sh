touch ~/.bashrc
grep -q '^source .*bashrc\.sh$' ~/.bashrc && echo 'already installed?' && exit
printf 'source %q\n' "$(dirname "$(realpath "$0")")/bashrc.sh" >> ~/.bashrc
