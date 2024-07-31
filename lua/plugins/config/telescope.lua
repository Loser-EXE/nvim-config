local map = vim.keymap.set

require('telescope').setup{
  defaults = {
    file_ignore_patterns = {"%.class"}
  }
}
