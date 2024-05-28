--File explorer
return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    local config = require("neo-tree")
    config.setup({
      default_component_configs = {
        file_size = { enabled = false },
        last_modified = { enabled = false },
        created = { enabled = false },
      },
      filesystem = {
        filtered_items = {
          -- hide_dotfiles = false, -- Uncomment when working with . files (ex: .config)
          hide_gitignored = true,
        },
      },
    })
    -- Shows the file explorer (like in VSCode)
    vim.keymap.set("n", "<C-n>", ":Neotree toggle<CR>", {})
  end,
}
