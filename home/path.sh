# Homebrew bin directories
export PATH="/usr/local/bin:/usr/local/sbin:$PATH";

#custom path
export PATH="~/.bin:$PATH";

# Use GNU utils
PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"


###############
#   MANPATH   #
###############

# Manpages for GNU utils
MANPATH="/usr/local/opt/findutils/libexec/gnuman:$MANPATH"
MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=~/Library/Python/3.7/bin:$PATH
