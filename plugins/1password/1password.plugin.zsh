if (( ${+commands[op]} )); then
  eval "$(op completion zsh)"
  compdef _op op
fi

# opswd puts the password of the named service into the clipboard. If there's a
# one time password, it will be copied into the clipboard after 10 seconds. The
# clipboard is cleared after another 20 seconds.
function opswd() {
  if [[ $# -lt 1 ]]; then
    echo "Usage: opswd <service>"
    return 1
  fi

  local service=$1

  # If not logged in, print error and return
  op user list > /dev/null || return

  local password
  # Copy the password to the clipboard
  if ! password=$(op item get "$service" --fields password 2>/dev/null); then
    echo "error: could not obtain password for $service"
    return 1
  fi

  echo -n "$password" | clipcopy
  echo "✔ password for $service copied to clipboard"

  # If there's a one time password, copy it to the clipboard after 10 seconds
  local totp
  if totp=$(op item get --otp "$service" 2>/dev/null) && [[ -n "$totp" ]]; then
    sleep 10 && echo -n "$totp" | clipcopy
    echo "✔ TOTP for $service copied to clipboard"
  fi

  (sleep 20 && clipcopy </dev/null 2>/dev/null) &!
}

function _opswd() {
  local -a services
  services=("${(@f)$(op item list --categories Login 2>/dev/null | op item get - --fields title 2>/dev/null)}")
  [[ -z "$services" ]] || compadd -a -- services
}

compdef _opswd opswd
