# ~/.Profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# get distribution name
if [ -f "/etc/os-release" ] ; then
    DISTRIBUTION=`awk -F= '/^NAME/{print $2}' /etc/os-release`
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# set PATH to include Android SDK
if [ -d "$HOME/.local/opt/android/tools" ] ; then
    PATH="$HOME/.local/opt/android/tools:$PATH"
fi

# set PATH to include Google App Engine
if [ -d "$HOME/.local/lib/python2.7/site-packages/appengine" ] ; then
    PATH="$HOME/.local/lib/python2.7/site-packages/appengine:$PATH"
fi

# set PATH to include cool directory for compilation course
if [ -d "usr/class/cs143/cool/bin" ] ; then
    PATH="usr/class/cs143/cool/bin:$PATH"
fi

# use Intel complier libraries if present
if [ -e "$HOME/.local/opt/intel/bin/compilervars.sh" ] && [ "uname -m" == "x86_64" ] ; then
    source "$HOME/.local/opt/intel/bin/compilervars.sh" intel64
fi

# edit Ubuntu settings
if [ $DISTRIBUTION == "Ubuntu" ] ; then
    ## Map ctrl to caps lock
    gsettings set org.gnome.desktop.input-sources xkb-options "['ctrl:nocaps']"

    ## Map 'show-hud' from alt to alt-super
    gsettings set org.compiz.integrated show-hud "['<Alt><Super>']"

    ## Enable address bar on Nautilus
    gsettings set org.gnome.nautilus.preferences always-use-location-entry  true
fi

