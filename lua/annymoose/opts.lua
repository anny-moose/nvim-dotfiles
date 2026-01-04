vim.wo.number=true
vim.wo.relativenumber=true

-- fucking beast required for numbers in netrw
vim.g.netrw_bufsettings = "noma nomod nu rnu nobl nowrap ro"

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.cmd.colorscheme("afterglow")

vim.opt.completeopt = { "menu", "menuone", "noselect" }

-- autoupdate loclist
vim.api.nvim_create_autocmd("DiagnosticChanged", {
    callback = function()
        vim.diagnostic.setloclist({open = false})
    end
})

vim.lsp.config('clangd', {
    cmd = { 'clangd21' }
})
vim.lsp.enable('clangd')
