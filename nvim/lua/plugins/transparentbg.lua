return {
	"xiyaowong/transparent.nvim",
	config = function()
		-- Toggle terminal transparency
		vim.keymap.set("n", "<leader>tt", ":TransparentToggle<CR>", {})
	end,
}
