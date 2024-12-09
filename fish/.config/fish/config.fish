set PATH $HOME/.local/bin $HOME/.cargo/bin $HOME/go/bin $PATH

set -x SSH_AUTH_SOCK $XDG_RUNTIME_DIR/gcr/ssh

set fish_greeting

zoxide init fish | source
starship init fish | source

alias trans "http_proxy=http://127.0.0.1:7890/ /usr/bin/trans -x 127.0.0.1:7890 -speak --no-auto -I en:zh"
