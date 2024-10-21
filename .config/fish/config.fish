alias dotfiles "git --git-dir=\"$HOME/.dotfiles\" --work-tree=\"$HOME\""

function fish_prompt
    string join "" (set_color $fish_color_cwr) (prompt_pwd) (set_color normal) " "
end

set -x RUSTUP_DIST_SERVER https://mirrors.tuna.tsinghua.edu.cn/rustup

set fish_greeting
