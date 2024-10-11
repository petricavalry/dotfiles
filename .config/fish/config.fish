if status is-interactive
    if test -z "$WAYLAND_DISPLAY" -a "$XDG_VTNR" -eq 1
        exec sway
    end
end

set -x RUSTUP_UPDATE_ROOT https://mirrors.tuna.tsinghua.edu.cn/rustup/rustup
set -x RUSTUP_DIST_SERVER https://mirrors.tuna.tsinghua.edu.cn/rustup

set fish_greeting

starship init fish | source
