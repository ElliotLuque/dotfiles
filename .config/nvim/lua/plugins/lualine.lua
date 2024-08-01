return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup {
        options = {
          theme = 'auto',
          section_separators = { left = '', right = '' },
        },
        sections = {
          lualine_a = {
            {
              'mode',
              icons_enabled = true,
              icon = { '', align = 'left' },
            },
          },
          lualine_b = {
            {
              'filename',
              file_status = true,
              padding = { left = 2, right = 2 },
            },
          },
          lualine_c = {
            {
              'branch',
              icon = { '󰘬', align = 'left' },
              separator = '',
            },
            {
              'diff',
              separator = '',
            },
          },
          lualine_x = {
            {
              'diagnostics',
              symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' },
              separator = '',
            },
            {
              'filetype',
            },
          },
          lualine_y = {},
          lualine_z = { 'location' },
        },
      }
    end,
  },
}
