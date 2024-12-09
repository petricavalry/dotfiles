local url = "https://github.com/folke/lazy.nvim"
local path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(path) then
    local obj = vim.system({ "git", "clone", "--filter=blob:none", "--branch=stable", url, path}):wait()
    if obj.code ~= 0 then
        print(obj.stdout)
        print(obj.stderr)
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(path)

vim.opt.number = true

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

vim.opt.conceallevel = 2
vim.opt.concealcursor = "nc"

require("lazy").setup("plugins")
