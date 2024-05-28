return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.diagnostics.pylint.with({
          diagnostic_config = { underline = false, virtual_text = false, signs = false },
          method = null_ls.methods.DIAGNOSTICS_ON_SAVE,
        }),
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
        --null_ls.builtins.formatting.cpplint,
      },
    })
    -- Linting / auto formats code
    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
