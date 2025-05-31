--@diagnostic disable: undefined-global

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

--keymaps basic
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', '<leader>e', '<cmd>Explore<CR>')
vim.keymap.set('n', '<leader>w', '<cmd>write<CR>')
-- Diagnostic keymaps
--vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

--- TEXT EDIT

-- deletes charcter RIGHT from cursor
vim.keymap.set('n', 'x', '"_x', { noremap = true, silent = true })

-- deletes character LEFT from cursor
vim.keymap.set('n', 'X', '"_X', { noremap = true, silent = true })

--- WINDOWS

-- Keybinds to make split navigation easier.
-- open new vertical window with <C-w>v
--  Use CTRL+<hjkl> to switch between windows
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
