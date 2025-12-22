
local map = vim.keymap.set

-- insert movement
map('i', '<A-h>', '<Left>', {noremap = true, silent = true})
map('i', '<A-j>', '<Down>', {noremap = true, silent = true})
map('i', '<A-k>', '<Up>', {noremap = true, silent = true})
map('i', '<A-l>', '<Right>', {noremap = true, silent = true})

-- map('i', '<C-w>', '')

map('n', '<leader>n', ':Ex<Enter>')
map('n', '<ESC>', ':noh<Enter>')

map('n', '<leader>e', vim.diagnostic.setloclist)
