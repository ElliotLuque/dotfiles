-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local keymap = vim.keymap.set

--
-- [[ General Keymaps ]]
--
keymap('v', 'J', ":m '>+1<CR>gv=gv")
keymap('v', 'K', ":m '<-2<CR>gv=gv")
keymap('n', '<C-d>', '<C-d>zz', { noremap = true })
keymap('n', '<C-u>', '<C-u>zz', { noremap = true })
keymap('n', '<Esc>', '<cmd>nohlsearch<CR>')
keymap('n', '<leader>ww', '<cmd>set wrap!<CR>', { desc = 'Toggle line wrapping' })
keymap('n', '<leader>ff', '<cmd>set foldenable!<CR>', { desc = 'Toggle folding' })

-- Diagnostic keymaps
keymap('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic' })
keymap('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic' })
keymap('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
keymap('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Disable arrow keys in normal mode
keymap('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
keymap('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
keymap('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
keymap('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

--
-- [[ Plugins ]]
--
keymap('n', '<leader>fml', '<cmd>CellularAutomaton make_it_rain<CR>')

keymap('n', '<leader>lst', '<cmd>LiveServerStart<CR>')
keymap('n', '<leader>lsd', '<cmd>LiveServerStop<CR>')
