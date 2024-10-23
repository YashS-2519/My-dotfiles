-- Set leader key
vim.g.mapleader = " "

-- Enable syntax highlighting
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- Enable line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable true colors
vim.opt.termguicolors = true
vim.opt.background = "dark"

-- Enable smart indent
vim.opt.smartindent = true

-- Disable line wrapping
vim.opt.wrap = false

-- Disable swap files and backups and undofiles in temp directories
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Scroll offset from top and bottom
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- Decrease update time
vim.opt.updatetime = 50

-- Highlight current cursor column
vim.opt.cursorcolumn = true

-- Highlight search
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Move selected text up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Center cursor
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste without overwriting buffer
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Replace word under cursor
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- Disable arrow keys in normal mode
vim.api.nvim_set_keymap('n', '<Up>', '', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Down>', '', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Left>', '', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Right>', '', { noremap = true, silent = true })

-- Disable arrow keys in visual mode
vim.api.nvim_set_keymap('v', '<Up>', '', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Down>', '', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Left>', '', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Right>', '', { noremap = true, silent = true })
