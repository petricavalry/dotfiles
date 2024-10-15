if status is-interactive
    if test -z "$WAYLAND_DISPLAY" -a "$XDG_VTNR" -eq 1
        exec sway
    end
end

alias dotfiles "git --git-dir=\"$HOME/.dotfiles\" --work-tree=\"$HOME\""

function fish_prompt
    starship prompt
end

set -x RUSTUP_DIST_SERVER https://mirrors.tuna.tsinghua.edu.cn/rustup

set fish_greeting
