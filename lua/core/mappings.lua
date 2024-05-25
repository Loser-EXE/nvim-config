local map = vim.keymap.set

-- Neotree keybinds
map('n', '<C-f>', ':Neotree action=show toggle<cr>', {silent=true})
map('n', '<C-g>', ':Neotree action=focus<cr>', {silent=true})

-- Ctrl-S to save
map({'n', 'i'}, '<C-s>', '<ESC>:w<CR>', {})

-- Telescope
map('n', '<Leader>ff', '<CMD>Telescope find_files<CR>', {silent=true})
map('n', '<Leader>fg', '<CMD>Telescope live_grep<CR>', {silent=true})

-- Terminal 
map("n", "<C-t>", ":hor bel split<CR>:res -5<CR>:terminal<CR>i", {silent=true})
map("t", "<Esc>", "<C-\\><C-n>", {})
map("t", "<C-t>", "<C-\\><C-n>:q<CR>", {})

-- CMake build tools
map("n", "<C-c>", ":Task start cmake configure<CR><ESC>", {silent=true})
map("n", "<C-b>", ":Task start cmake build<CR><ESC>", {silent=true})

map("n", "<Leader>nhl", ":nohlsearch<CR>", {silent=true})
