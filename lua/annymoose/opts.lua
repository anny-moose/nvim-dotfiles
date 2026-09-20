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

vim.lsp.config('clangd', {})
vim.lsp.enable('clangd')

vim.lsp.config('rust_analyzer', {})
vim.lsp.enable('rust_analyzer')

vim.lsp.config('qmlls', {})
vim.lsp.enable('qmlls')

vim.lsp.config('zls', {
  -- Set to 'zls' if `zls` is in your PATH
  cmd = { 'zls' },
  filetypes = { 'zig' },
  root_markers = { 'build.zig' },
  -- There are two ways to set config options:
  --   - edit your `zls.json` that applies to any editor that uses ZLS
  --   - set in-editor config options with the `settings` field below.
  --
  -- Further information on how to configure ZLS:
  -- https://zigtools.org/zls/configure/
  settings = {
    zls = {
      -- Whether to enable build-on-save diagnostics
      --
      -- Further information about build-on save:
      -- https://zigtools.org/zls/guides/build-on-save/
      -- enable_build_on_save = true,

      -- omit the following line if `zig` is in your PATH
      -- zig_exe_path = '/path/to/zig_executable'
    }
  },
})
vim.lsp.enable('zls')
