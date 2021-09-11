#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
# PS1='<\u@\h \W>\$ '
. "$HOME/.cargo/env"

pfetch

#export JAVA_OPTS='-XX:+IgnoreUnrecognizedVMOptions --add-modules java.se.ee'
export JAVA_OPTS='-XX:+IgnoreUnrecognizedVMOptions'

export JAVA_HOME='/usr/lib/jvm/java-11-openjdk'
export ANDROID_SDK_ROOT='/opt/android-sdk'
export ANDROID_HOME='/opt/android-sdk'
#export ANDROID_SDK_ROOT='/opt/android-sdk/tools'

alias yay='paru'
