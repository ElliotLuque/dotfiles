return {
  {
    'nvim-telescope/telescope.nvim',
    event = 'VimEnter',
    branch = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
        cond = function()
          return vim.fn.executable 'make' == 1
        end,
      },
      { 'nvim-telescope/telescope-ui-select.nvim' },
      { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
    },
    config = function()
      local actions = require 'telescope.actions'

      require('telescope').setup {
        defaults = {
          layout_config = {
            preview_width = 0.55,
          },
          mappings = {
            i = { ['<esc>'] = actions.close },
          },
        },
        extensions = {
          ['ui-select'] = {
            require('telescope.themes').get_dropdown(),
          },
        },
      }

      -- Enable telescope extensions, if they are installed
      pcall(require('telescope').load_extension, 'fzf')
      pcall(require('telescope').load_extension, 'ui-select')

      local builtin = require 'telescope.builtin'
      local keymap = vim.keymap.set

      keymap('n', '<leader><leader>', builtin.find_files, { desc = '[S]earch [F]iles' })
      keymap('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
      keymap('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' })
      keymap('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
      keymap('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
      keymap('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })

      -- Neovim config files
      keymap('n', '<leader>sn', function()
        builtin.find_files { cwd = vim.fn.stdpath 'config' }
      end, { desc = '[S]earch [N]eovim files' })
    end,
  },
}
