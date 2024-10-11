return {
  "romgrk/barbar.nvim",
  dependencies = {
    "lewis6991/gitsigns.nvim",   -- OPTIONAL: for git status
    "nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
  },
  config = function()
    vim.g.barbar_auto_setup = false
    local config = require("barbar")
    config.setup({
      animation = false,
      auto_hide = 1,
      -- maximum_padding = 1,
      sidebar_filetypes = {
        ["neo-tree"] = { event = "BufWipeout" },
      },
    })
    vim.keymap.set("n", "<leader>z", ":BufferNext<CR>") -- cycle through tabs
    vim.keymap.set("n", "<leader>x", ":BufferClose<CR>") -- close tab
  end,
}
