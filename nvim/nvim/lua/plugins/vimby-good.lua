return {
  'ThePrimeagen/vim-be-good',
  config = function()
    vim.keymap.set('n', '<leader>gb', vim.cmd.VimBeGood, {})
  end
}
