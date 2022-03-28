# Autocompletion for the Charm CLI (charm).
if (( ! $+commands[charm] )); then
  return
fi

# TODO: 2021-12-28: remove this block
# Handle $0 according to the standard:
# https://zdharma-continuum.github.io/Zsh-100-Commits-Club/Zsh-Plugin-Standard.html
0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"
# Remove old generated files
command rm -f "${0:A:h}/_charm" "$ZSH_CACHE_DIR/charm_version"

# TODO: 2021-12-28: remove this bit of code as it exists in oh-my-zsh.sh
# Add completions folder in $ZSH_CACHE_DIR
command mkdir -p "$ZSH_CACHE_DIR/completions"
(( ${fpath[(Ie)"$ZSH_CACHE_DIR/completions"]} )) || fpath=("$ZSH_CACHE_DIR/completions" $fpath)

# If the completion file doesn't exist yet, we need to autoload it and
# bind it to `charm`. Otherwise, compinit will have already done that.
if [[ ! -f "$ZSH_CACHE_DIR/completions/_charm" ]]; then
  typeset -g -A _comps
  autoload -Uz _charm
  _comps[charm]=_charm
fi

charm completion zsh >| "$ZSH_CACHE_DIR/completions/_charm" &|
