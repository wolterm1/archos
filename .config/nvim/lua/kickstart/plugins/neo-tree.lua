-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '<leader>n', ':Neotree float<CR>', desc = 'Neotree float', silent = true },
  },
  opts = {
    filesystem = {
      hijack_netrw_behavior = 'disabled', -- keine automatische Öffnung
      window = {
        mappings = {
          ['<Esc>'] = 'close_window',
        },
      },
    },
  },
}
