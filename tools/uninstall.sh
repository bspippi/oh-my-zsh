echo "Removing ~/.oh-my-zsh"
if [ -d ~/.oh-my-zsh ]
then
  rm -rf ~/.oh-my-zsh
fi

echo "Looking for original zsh config..."
if [ -f ~/.zshrc.pre-oh-my-zsh ] || [ -h ~/.zshrc.pre-oh-my-zsh ]
then
  echo "Found ~/.zshrc.pre-oh-my-zsh -- Restoring to ~/.zshrc";

  if [ -f ~/.zshrc ] || [ -h ~/.zshrc ]
  then
    ZSHRC_SAVE=".zshrc.omz-uninstalled-`date +%Y%m%d%H%M%S`";
    echo "Found ~/.zshrc -- Renaming to ~/${ZSHRC_SAVE}";
    mv ~/.zshrc ~/${ZSHRC_SAVE};
  fi

  mv ~/.zshrc.pre-oh-my-zsh ~/.zshrc;
fi

echo "Looking for previous default shell..."
if [ -f ~/.pre-oh-my-zsh-shell ] || [ -h ~/.pre-oh-my-zsh-shell ]
then
  PREVSHELL=$(cat ~/.pre-oh-my-zsh-shell)
  if [ -x "$PREVSHELL" ]
  then
    echo "Switching back to $PREVSHELL"
    chsh -s $PREVSHELL
  fi
fi

echo "Thanks for trying out Oh My Zsh. It's been uninstalled."
