alias-finder() {
  local cmd="" exact="" longer="" wordStart="" wordEnd="" multiWordEnd=""
  for i in $@; do
    case $i in
      -e|--exact) exact=true;;
      -l|--longer) longer=true;;
      *) 
        if [[ -z $cmd ]]; then
          cmd=$i
        else
          cmd="$cmd $i"
        fi
        ;;
    esac
  done
  cmd=$(sed 's/[].\|$(){}?+*^[]/\\&/g' <<< $cmd)
  if [[ $(wc -l <<< $cmd) == 1 ]]; then
    while [[ $cmd != "" ]]; do
      if [[ $longer = true ]]; then
        wordStart="'{0,1}"
      else
        wordEnd="$"
        multiWordEnd="'$"
      fi
      if echo $cmd | grep '^[^ ]*$' > /dev/null; then
        local finder=$wordStart$cmd$wordEnd
      else
        local finder="'$cmd$multiWordEnd"
      fi
      alias | grep -E "=$finder"
      if [[ $exact = true || $longer = true ]]; then
        break
      else
        cmd=$(sed -E 's/ {0,1}[^ ]*$//' <<< $cmd) # deletes last word
      fi
    done
  fi
}

preexec_alias-finder() {
  if [[ $ZSH_ALIAS_FINDER_AUTOMATIC = true ]]; then
    alias-finder $1
  fi
}

preexec_functions+=(preexec_alias-finder)
