-- Bootstrap lazy.nvim
local path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim" -- https://neovim.io/doc/user/starting.html#standard-path

if not vim.loop.fs_stat(path) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        path,
    })
end

vim.opt.rtp:prepend(path)

require("lazy").setup("plugins")
require("core/options")
require("core/mappings")
