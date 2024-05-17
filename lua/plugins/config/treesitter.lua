require("nvim-treesitter.configs").setup{
  ensure_installed = {"lua", "json"},

  sync_install = false,
  auto_install = true,

  ignore_install = {},
  modules = {},

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
