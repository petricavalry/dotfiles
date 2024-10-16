def create_left_prompt [] {
    let path = match (do --ignore-shell-errors {pwd | path relative-to $env.HOME}) {
        null => pwd,
        $relative_path => ([~ $relative_path] | path join)
    }
    let path = $path | path split
    let path_len = $path | length
    let path = $path | enumerate | each {|item|
        if $item.index < ($path_len - 1) {
            $item.item | split chars | get 0
        } else {
            $item.item
        }
    }
    $path | path join
}

$env.PROMPT_COMMAND = {|| create_left_prompt }
$env.PROMPT_COMMAND_RIGHT = ""
$env.PROMPT_INDICATOR = " "

$env.RUSTUP_DIST_SERVER = "https://mirrors.tuna.tsinghua.edu.cn/rustup"
