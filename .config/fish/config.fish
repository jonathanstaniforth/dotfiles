set -g -x fish_greeting 'Welcome back!'
status --is-interactive; and source (rbenv init -|psub)
