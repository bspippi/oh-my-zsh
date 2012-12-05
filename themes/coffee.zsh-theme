# Coffeescript Theme by Dylan Hudson (@dyln_hdsn on twitter)
ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%} ("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%})%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='%{$fg[cyan]%}%1~%{$reset_color%}%{$fg[yellow]%}:%{$fg[black]%}$(git_prompt_info) ->%{$reset_color%} '
