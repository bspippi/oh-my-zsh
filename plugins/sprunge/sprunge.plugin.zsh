# Smart sprunge alias/script.
#
# To add the sprunge script to your path, add this to your .zshrc file:
#
#   zstyle :omz:plugins:sprunge add-path on
#
# Otherwise, a simple alias for sprunge, but only if there isn't a smarter,
# better one out there in $PATH, will be added.

# zstyle -b :omz:plugins:sprunge add-path _plugin__path
# if [[ ${_plugin__path} == "on" ]]; then
  # Plugin setting: Add this plugin directory to the path
  # export PATH=$PATH:$ZSH/plugins/sprunge
# elif [[ -z "${commands[sprunge]}" ]]; then
  # Nope. No `sprunge` command, period. So, dumb/simple alias, here we go!
  # alias sprunge="curl -F 'sprunge=<-' http://sprunge.us/"
# fi
#
# Contributed and SLIGHTLY modded by Matt Parnell/ilikenwf <parwok -at- gmail>
# Created by the blogger at the URL below...I don't know where to find his/her name
# Original found at http://www.shellperson.net/sprunge-pastebin-script/

sprunge () {
  local url syntax

  if [[ -t 0 ]]; then
    if [[ -n "$*" ]]; then
      if [[ -f "$*" ]]; then
        # Use python to attempt to detect the syntax
        syntax=$(echo "try:
	from pygments.lexers import get_lexer_for_filename
	print(get_lexer_for_filename('$*').aliases[0])
except:
	print('text')" | python)
        url=$(curl -s -F 'sprunge=<-' http://sprunge.us < "$*")
      fi
    else
      cat << HERE

DESCRIPTION
  Upload data and fetch URL from the pastebin http://sprunge.us

  In addition to printing the returned URL, if the xset or xsel
  programs are available (on $PATH), the URL will also be copied to the
  PRIMARY selection and the CLIPBOARD selection (allowing to quickly
  paste the url into IRC client for example).

USAGE
  $0 filename.txt
  $0 < filename.txt
  piped_data | $0

INPUT METHODS

$0 can accept piped data, STDIN redirection [<filename.txt], text strings
following the command as arguments, or filenames as arguments.  Only one
of these methods can be used at a time, so please see the note on
precedence.  Also, note that using a pipe or STDIN redirection will treat
tabs as spaces, or disregard them entirely (if they appear at the
beginning of a line).  So I suggest using a filename as an argument if
tabs are important either to the function or readability of the code.

PRECEDENCE

STDIN redirection has precedence, then piped input, then a filename as an
argument. Example:

    echo piped | "$0" arguments.txt < stdin_redirection.txt

In this example, the contents of file_as_stdin_redirection.txt would be
uploaded. Both the piped_text and the file_as_argument.txt are ignored. If
there is piped input and arguments, the arguments will be ignored, and the
piped input uploaded.

FILENAMES

If a filename is misspelled or doesn't have the necessary path
description, it will NOT generate an error, but will instead treat it as
a text string and upload it.

HERE
      return 1
    fi
  else
    syntax="text" # We're dumb in this mode. So, dumb syntax highlighting!
    url=$(while read -r line ; do
      echo $line
    done | curl -s -F 'sprunge=<-' http://sprunge.us)
  fi

  local flags

  # trim whitespaces and add syntax info
  url=${url//[[:space:]]}
  [[ $syntax != text ]] && url=${url}?${syntax}

  # if stdout is not a tty, suppress trailing newline
  # XXX: i don't think this is the right thing to do
  # [[ ! -t 1 ]] && flags='-n'

  # output
  echo $flags $url

  # don't copy to clipboad if piped
  [[ ! -t 1 ]] && return 0

  #copy url to primary and clipboard (middle-mouse & shift+ins/Ctrl+v)
  if (( $+commands[xclip] )); then
    echo -n $url | xclip -sel primary
    echo -n $url | xclip -sel clipboard
  elif (( $+commands[xsel] )); then
    echo -n $url | xsel -ip #primary
    echo -n $url | xsel -ib #clipboard
  fi
}
