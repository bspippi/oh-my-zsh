# Check for updates on initial load...
if [ "$DISABLE_AUTO_UPDATE" != "true" ]
then
  /usr/bin/env zsh $ZSH/tools/check_for_upgrade.sh
fi

# Initializes Oh My Zsh

# Disable colors on dumb terminals
if [ "$TERM" = "dumb" ]; then
  DISABLE_COLOR="true"
fi

# add a function path
fpath=($ZSH/functions $ZSH/completions $fpath)

# Load all of the config files in ~/oh-my-zsh that end in .zsh
# TIP: Add files you don't want in git to .gitignore
for config_file ($ZSH/lib/*.zsh) source $config_file

# Add all defined plugins to fpath
plugin=${plugin:=()}
for plugin ($plugins) fpath=($ZSH/plugins/$plugin $fpath)

# Load and run compinit
autoload -U compinit
compinit -i

# Load all of the plugins that were defined in ~/.zshrc
for plugin ($plugins); do
  if [ -f $ZSH/custom/plugins/$plugin/$plugin.plugin.zsh ]; then
    source $ZSH/custom/plugins/$plugin/$plugin.plugin.zsh
  elif [ -f $ZSH/plugins/$plugin/$plugin.plugin.zsh ]; then
    source $ZSH/plugins/$plugin/$plugin.plugin.zsh
  fi
done

# Load the theme
if [ "$ZSH_THEME" = "random" ]
then
  themes=($ZSH/themes/*zsh-theme)
  N=${#themes[@]}
  ((N=(RANDOM%N)+1))
  RANDOM_THEME=${themes[$N]}
  source "$RANDOM_THEME"
  echo "[oh-my-zsh] Random theme '$RANDOM_THEME' loaded..."
else
  source "$ZSH/themes/$ZSH_THEME.zsh-theme"
fi

<<<<<<< HEAD
# Load all of your custom configurations from custom/
for config_file ($ZSH/custom/*.zsh) source $config_file

# Compile zcompdump, if modified, to increase startup speed.
if [ "$HOME/.zcompdump" -nt "$HOME/.zcompdump.zwc" -o ! -e "$HOME/.zcompdump.zwc" ]; then
  zcompile "$HOME/.zcompdump"
fi

# Check for updates on initial load...
if [ "$DISABLE_AUTO_UPDATE" = "true" ]
then
  return
else
  /usr/bin/env zsh $ZSH/tools/check_for_upgrade.sh
fi
=======
>>>>>>> robbyrussel/master
