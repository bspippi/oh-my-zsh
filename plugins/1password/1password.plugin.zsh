if (( ${+commands[op]} )); then
  eval "$(op completion zsh)"
  compdef _op op
fi

# opswd puts the password of the named service into the clipboard. If there's a
# one time password, it will be copied into the clipboard after 5 seconds. The
# clipboard is cleared after another 10 seconds.
function opswd() {
  if [[ $# -lt 1 ]]; then
    echo "Usage: opswd <service>"
    return 1
  fi

  local service=$1

  # If not logged in, print error and return
  op list users > /dev/null || return

  # Copy the password to the clipboard
  if ! op get item "$service" --fields password 2>/dev/null | clipcopy; then
    echo "error: could not obtain password for $service"
    return 1
  fi

  echo "✔ password for $service copied to clipboard"

  # If there's a one time password, copy it to the clipboard after 5 seconds
  local totp
  if totp=$(op get totp "$service" 2>/dev/null) && [[ -n "$totp" ]]; then
    (
      sleep 10 && echo -n "$totp" | clipcopy
      echo "✔ TOTP for $service copied to clipboard"

      sleep 30 && clipcopy < /dev/null 2>/dev/null
      echo "clipboard cleared"
    ) &!
  else
    (
      sleep 30 && clipcopy < /dev/null 2>/dev/null
      echo "clipboard cleared"
    ) &!
  fi
}

function _opswd() {
  local -a services
  services=("${(@f)$(op list items --categories Login 2>/dev/null | jq -r '.[].overview.title')}")
  [[ -z "$services" ]] || compadd -a -- services
}

compdef _opswd opswd
