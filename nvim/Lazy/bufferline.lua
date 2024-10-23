return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require("bufferline").setup({
			options = {
				mode = "buffers",
			},
		})
    vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<C-c>', ':bdelete<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>c', ':%bdelete<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<Leader>o', ':%bdelete|edit #|bdelete#<CR>', { noremap = true, silent = true })

	end,
}
