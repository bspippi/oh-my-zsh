# ZSH Theme - Preview: http://dl.dropbox.com/u/4109351/pics/gnzh-zsh-theme.png
# Based on bira theme

# load some modules
autoload -U colors zsh/terminfo # Used in the colour alias below
colors
setopt prompt_subst

# make some aliases for the colours: (coud use normal escap.seq's too)
for color in RED GREEN YELLOW BLUE MAGENTA CYAN WHITE; do
  eval PR_$color='%{$fg[${(L)color}]%}'
done
eval PR_NO_COLOR="%{$terminfo[sgr0]%}"
eval PR_BOLD="%{$terminfo[bold]%}"

# Check the UID
if [[ $UID -ge 1000 ]]; then # normal user
  eval PR_USER='${PR_GREEN}%n${PR_NO_COLOR}'
  eval PR_USER_OP='${PR_GREEN}%#${PR_NO_COLOR}'
  local PR_PROMPT='$PR_NO_COLOR➤ $PR_NO_COLOR'
elif [[ $UID -eq 0 ]]; then # root
  eval PR_USER='${PR_RED}%n${PR_NO_COLOR}'
  eval PR_USER_OP='${PR_RED}%#${PR_NO_COLOR}'
  local PR_PROMPT='$PR_RED➤ $PR_NO_COLOR'
fi

# Check if we are on SSH or not
if [[ -n "$SSH_CLIENT"  ||  -n "$SSH2_CLIENT" ]]; then 
  eval PR_HOST='${PR_YELLOW}%M${PR_NO_COLOR}' #SSH
else
  eval PR_HOST='${PR_GREEN}%M${PR_NO_COLOR}' # no SSH
fi

set-return-code() {
  typeset -g return_code=""
  if [[ $__prompt_status != 0 ]]; then
    return_code="%{$PR_RED%}$__prompt_status ↵%{$PR_NO_COLOR%}"
  fi
}

set-rps1() {
  local mode=''
  if [[ $KEYMAP = vicmd ]]; then
    mode='%{$PR_RED%}[CMD]%{$PR_NO_COLOR%}'
  fi
  RPS1="${return_code} ${mode}"
  zle reset-prompt
}

zle-line-init() {
  typeset -g __prompt_status="$?"
  set-return-code
  set-rps1
}

zle-keymap-select() {
  set-rps1
}

zle -N zle-keymap-select
zle -N zle-line-init

local user_host='${PR_USER}${PR_CYAN}@${PR_HOST}'
local current_dir='%{$PR_BOLD$PR_BLUE%}%~%{$PR_NO_COLOR%}'
local rvm_ruby=''
if which rvm-prompt &> /dev/null; then
  rvm_ruby='%{$PR_RED%}‹$(rvm-prompt i v g s)›%{$PR_NO_COLOR%}'
elif which rbenv &> /dev/null; then
  rvm_ruby='%{$PR_RED%}‹$(rbenv version | sed -e "s/ (set.*$//")›%{$PR_NO_COLOR%}'
elif which chruby &> /dev/null; then
  rvm_ruby='%{$PR_RED%}‹$(chruby | (grep "*" || echo system) | sed "s/ \* //")›%{$PR_NO_COLOR%}'
fi
local git_branch='$(git_prompt_info)%{$PR_NO_COLOR%}'

#PROMPT="${user_host} ${current_dir} ${rvm_ruby} ${git_branch}$PR_PROMPT "
PROMPT="╭─${user_host} ${current_dir} ${rvm_ruby} ${git_branch}
╰─$PR_PROMPT "
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$PR_YELLOW%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="› %{$PR_NO_COLOR%}"
