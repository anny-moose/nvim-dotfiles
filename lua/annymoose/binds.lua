
local map = vim.keymap.set

-- insert movement
map('i', '<A-h>', '<Left>', {noremap = true, silent = true})
map('i', '<A-j>', '<Down>', {noremap = true, silent = true})
map('i', '<A-k>', '<Up>', {noremap = true, silent = true})
map('i', '<A-l>', '<Right>', {noremap = true, silent = true})

-- map('i', '<C-w>', '')

map('n', '<leader>n', '<cmd>Ex<cr>')
map('n', '<ESC>', '<cmd>noh<cr>')


-- LSP
map('n', '<leader>e', vim.diagnostic.setloclist)
map('n', '<leader>ra', vim.lsp.buf.rename)
map('n', 'gD', '<cmd>tab split | lua vim.lsp.buf.declaration()<CR>', { noremap = true, silent = true })
map('n', 'gd', '<cmd>tab split | lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })
map('n', '<leader>k', vim.lsp.buf.hover)
map({'n', 'i'}, '<C-k>', vim.lsp.buf.signature_help)
map('i', '<C-Space>', '<C-x><C-o>')


map('n', '<C-Up>', '<cmd>resize +5<cr>', { desc = 'Increase Window Height' })
map('n', '<C-Down>', '<cmd>resize -5<cr>', { desc = 'Decrease Window Height' })
map('n', '<C-Right>', '<cmd>vertical resize +5<cr>', { desc = 'Increase Window Width' })
map('n', '<C-Left>', '<cmd>vertical resize -5<cr>', { desc = 'Decrease Window Width' })


-- tabs
map('n', '<leader>tn', '<cmd>tabnext<cr>', { desc = 'Next tab' })
map('n', '<leader>tN', '<cmd>+tabmove<cr>', { desc = 'Previous tab' })
map('n', '<leader>tp', '<cmd>tabprevious<cr>', { desc = 'Previous tab' })
map('n', '<leader>tP', '<cmd>-tabmove<cr>', { desc = 'Previous tab' })

map('n', '<leader>tc', '<cmd>tabnew<cr>', { desc = 'Previous tab' })

