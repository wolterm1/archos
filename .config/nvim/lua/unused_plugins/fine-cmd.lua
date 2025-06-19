return {
  'MunifTanjim/nui.nvim',
  dependencies = {
    'VonHeikemen/fine-cmdline.nvim',
  },
  vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', { noremap = true }),
}
