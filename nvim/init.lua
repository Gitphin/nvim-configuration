-- Indent spacing
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
-- Leader key set to SPACE
vim.g.mapleader = " "
vim.keymap.set({ "n", "x" }, "<leader>y", [["+y]]) -- copy to system clipboard
vim.keymap.set({ "n", "x" }, "<leader>p", [["+p]]) -- paste from system clipboard
vim.keymap.set("n", "<leader>`", ":tabnew<CR>:terminal<CR>") --open a terminal window
vim.keymap.set("n", "<leader>z", ":tabNext<CR>") -- cycle through tabs
vim.keymap.set("n", "<leader>x", ":tabclose<CR>") -- close tab
-- Using lazyloader for packages
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

--require("vops")
require("lazy").setup("plugins")
