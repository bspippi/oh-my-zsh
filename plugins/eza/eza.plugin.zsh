

typeset -a _EZA_HEAD
typeset -a _EZA_TAIL

function _configure_eza() {
  local _val
  # Get the head flags
  zstyle -s ':omz:plugins:eza' 'showgroup' _val
  if [[ -z $_val || $_val == 1 ]]; then
    _EZA_HEAD+=("g")
  fi
  # Get the tail long-options
  zstyle -s ':omz:plugins:eza' 'dirs-first' _val
  if [[ $_val == 1 ]]; then
    _EZA_TAIL+=("--group-directories-first")
  fi
  zstyle -s ':omz:plugins:eza' 'time-style' _val
  if [[ $_val ]]; then
    _EZA_TAIL+=("--time-style='$_val'")
  fi
}

_configure_eza

function _alias_eza() {
  local _tail
  _tail="${(j: :)_EZA_TAIL}"
  alias "$1"="eza -${(j::)_EZA_HEAD}$2${_tail:+ }${_tail}${3:+ }$3"
}

_alias_eza la   la
_alias_eza ldot ld ".*"
_alias_eza ll   l
_alias_eza ls
_alias_eza lS   "l -ssize"
_alias_eza lT   "l -snewest"

unfunction _alias_eza
unfunction _configure_eza
unset _EZA_HEAD
unset _EZA_TAIL

