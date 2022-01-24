if (( ! $+commands[helm] )); then
  return
fi

# If the completion file does not exist, generate it and then source it
# Otherwise, source it and regenerate in the background
if [[ ! -f "$ZSH_CACHE_DIR/completions/_helm" ]]; then
  helm completion zsh >| "$ZSH_CACHE_DIR/completions/_helm"
  source "$ZSH_CACHE_DIR/completions/_helm"
else
  source "$ZSH_CACHE_DIR/completions/_helm"
  helm completion zsh >| "$ZSH_CACHE_DIR/completions/_helm" &|
fi
