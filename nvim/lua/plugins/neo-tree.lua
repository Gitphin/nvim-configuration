--File explorer
return  {"nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim", 
    "nvim-tree/nvim-web-devicons", 
    "MunifTanjim/nui.nvim"},
  config = function()
    vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})
    vim.keymap.set('n', '<leader>n', ':Neotree close<CR>', {})
    vim.keymap.set('n', '<leader>m', ':Neotree buffers<CR>', {}) 
  end 
}

