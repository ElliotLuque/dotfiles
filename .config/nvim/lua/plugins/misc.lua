return {
  {
    'tpope/vim-sleuth',
  },
  {
    'numToStr/Comment.nvim',
    opts = {},
  },
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    opts = function()
      local npairs = require 'nvim-autopairs.completion.cmp'
      local cmp = require 'cmp'
      cmp.event:on('confirm_done', npairs.on_confirm_done())
      return {
        check_ts = true,
        ts_config = {
          lua = { 'string' },
        },
      }
    end,
  },
  {
    'eandrju/cellular-automaton.nvim',
  },
  {
    'folke/which-key.nvim',
    event = 'VimEnter',
  },
  {
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { signs = false },
  },
  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
  },
  {
    'kylechui/nvim-surround',
    version = '*',
    event = 'VeryLazy',
  },
  {
    'windwp/nvim-ts-autotag',
  },
}
