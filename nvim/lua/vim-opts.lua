-- Leader key set to SPACE
vim.g.mapleader = " "

-- Swap files
vim.opt.swapfile = false
-- Indent spacing / options
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.cindent = true

-- Searching options
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.backspace = "indent,eol,start"
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Select all
vim.keymap.set("n", "<leader>a", "<esc>ggVG<CR>")

-- Set line numbers
vim.cmd(":set number")
-- ENABLES RELATIVE LINES
-- vim.opt.number = true
-- vim.opt.relativenumber = true
-- vim.opt.signcolumn = "number"

-- Telescope find all commands for plugins, very useful if don't know stuff
vim.api.nvim_set_keymap('n', "<leader>cmd", "<cmd>Telescope commands<cr>", { noremap = true})

-- Copy to system clipboard without remapping
vim.keymap.set({ "n", "x", "v" }, "<leader>y", '"*y', { noremap = true })

-- Paste from system clipboard without remapping
vim.keymap.set({ "n", "x", "v" }, "<leader>p", '"*p', { noremap = true })-- paste from system clipboard

-- Split editor right
vim.keymap.set("n", "<C-k>", ":vert topleft split<CR>")
-- NOTE: Ctrl wq closes buffer, Ctrl ws splits buffer down, Ctrl w arrow keys change active buffer
-- Using lazyloader for packages


