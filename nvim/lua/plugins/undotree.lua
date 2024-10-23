return {
  "mbbill/undotree",
  config = function()
    require('lualine').setup({
      options = {
        theme = 'dracula'
      }
    })
  end,

  vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, {})
}
