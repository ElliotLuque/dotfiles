return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('nvim-treesitter.configs').setup {
        ensure_installed = { 'bash', 'c', 'html', 'lua', 'markdown', 'vim', 'vimdoc', 'glsl' },
        -- Autoinstall languages that are not installed
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = false },
      }

      -- Add filetype recognition for GLSL extensions
      vim.filetype.add {
        extension = {
          vert = 'glsl',
          frag = 'glsl',
          geom = 'glsl',
          tesc = 'glsl',
          tese = 'glsl',
          comp = 'glsl',
        },
      }
    end,
  },
}
