
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

map('n', ':', 'q:i');
vim.api.nvim_create_autocmd('CmdwinEnter', {
  callback = function()
    map('n', '<Esc>', '<cmd>q<CR>', { buffer = true })
    map('n', ':', 'Go', { buffer = true })
  end,
})

-- Window navigation
map('n', '<C-Up>', '<cmd>resize +5<cr>', { desc = 'Increase Window Height' })
map('n', '<C-Down>', '<cmd>resize -5<cr>', { desc = 'Decrease Window Height' })
map('n', '<C-Right>', '<cmd>vertical resize +5<cr>', { desc = 'Increase Window Width' })
map('n', '<C-Left>', '<cmd>vertical resize -5<cr>', { desc = 'Decrease Window Width' })

map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

map('n', '<C-A-h>', '<C-w>H')
map('n', '<C-A-j>', '<C-w>J')
map('n', '<C-A-k>', '<C-w>K')
map('n', '<C-A-l>', '<C-w>L')


-- tabs
map('n', '<leader>tn', '<cmd>tabnext<cr>', { desc = 'Next tab' })
map('n', '<leader>tN', '<cmd>+tabmove<cr>', { desc = 'Previous tab' })
map('n', '<leader>tp', '<cmd>tabprevious<cr>', { desc = 'Previous tab' })
map('n', '<leader>tP', '<cmd>-tabmove<cr>', { desc = 'Previous tab' })

map('n', '<leader>tc', '<cmd>tabnew<cr>', { desc = 'New tab' })

