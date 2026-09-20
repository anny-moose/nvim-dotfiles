return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'main',
  lazy = false,
  build = ':TSUpdate',
  opts = {
      ensure_installed = {
          "c",
          "cpp",
          "lua",
          "markdown",
          "java",
          "rust",
          "php"
      }
  },
}




