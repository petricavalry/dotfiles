return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                auto_install = true,
                highlight = {
                    enable = true,
                },
                indent = {
                    enable = true,
                }
            })
        end,
        dependencies = {
            { "nushell/tree-sitter-nu", build = ":TSUpdate nu" },
        }
    },
}
