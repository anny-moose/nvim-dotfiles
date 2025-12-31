
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

map('n', '<leader>ra', vim.lsp.buf.rename)

map("n", "<C-Up>", "<cmd>resize +5<cr>", { desc = "Increase Window Height" })
map("n", "<C-Down>", "<cmd>resize -5<cr>", { desc = "Decrease Window Height" })
map("n", "<C-Right>", "<cmd>vertical resize +5<cr>", { desc = "Increase Window Width" })
map("n", "<C-Left>", "<cmd>vertical resize -5<cr>", { desc = "Decrease Window Width" })
