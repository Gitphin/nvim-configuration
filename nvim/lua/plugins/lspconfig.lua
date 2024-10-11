return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			-- lua_ls = Lua, clandgd = C/C++, rust_analyzer = Rust, pyright = Python
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "clangd", "rust_analyzer", "pyright", "ts_ls" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			--local capabilities = require("cmp_nvim_lsp").default_capabilities() -- set capabilities = capabilities in setup({})s
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.pyright.setup({})
			lspconfig.rust_analyzer.setup({})
			lspconfig.clangd.setup({})
			lspconfig.ts_ls.setup({})
			-- Shows code info, definitons, and code suggestions/actions
			vim.keymap.set("n", "Z", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "fd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>cx", vim.lsp.buf.code_action, {})
		end,
	},
}
