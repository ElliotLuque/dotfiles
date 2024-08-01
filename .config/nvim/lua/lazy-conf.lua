local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'

if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local git_cmd = { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  vim.fn.system(git_cmd)
end

vim.opt.rtp:prepend(lazypath)

local status, lazy = pcall(require, 'lazy')
if not status then
  print 'Failed to load lazy.nvim'
  return
end

lazy.setup({
  { import = 'plugins' },
}, {
  ui = {
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})
