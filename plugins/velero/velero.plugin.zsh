# Autocompletion for Velero CLI
# Based on kevinkirkup's oc completion plugin
#
# Author: https://github.com/s1msn

if [ $commands[velero] ]; then
  source <(velero completion zsh)
fi
