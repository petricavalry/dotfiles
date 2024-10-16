$env.config = {
    show_banner: false,
    history: {
        file_format: "sqlite",
    }
}

alias dotfiles = git --git-dir=$"($env.HOME)/.dotfiles" --work-tree=$"($env.HOME)"
