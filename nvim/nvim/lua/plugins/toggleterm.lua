return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({

			size = 20,
			open_mapping = [[<C-t>]], -- Set <C-t> to open the terminal

			direction = "float", -- Set the terminal direction to 'float'

			float_opts = {
				border = "curved", -- Choose border style; options: 'single', 'double', 'shadow', 'curved'
				width = 80, -- Width of the floating terminal window
				height = 25, -- Height of the floating terminal window
				winblend = 3, -- Transparency of the window
				zindex = 50, -- Z-index to make the terminal window appear on top
				title = "Floating Terminal", -- Title for the floating terminal
				title_pos = "center", -- Title position for the floating window ('left', 'center', 'right')
			},

			start_in_insert = true, -- Start terminal in insert mode
			close_on_exit = true, -- Close terminal window when the process exits
			shade_terminals = true, -- Enable shading for terminals
			shading_factor = -30, -- Darken terminal background by 30%
			persist_size = true, -- Remember terminal size between uses
			persist_mode = true, -- Remember terminal mode between uses
			auto_scroll = true, -- Automatically scroll to the bottom on terminal output
			shell = vim.o.shell, -- Use default shell
		})
	end,
}
