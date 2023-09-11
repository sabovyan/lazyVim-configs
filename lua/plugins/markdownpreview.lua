return {
  "iamcco/markdown-preview.nvim",
  build = "cd app && npm install",
  lazy = true,
  ft = { "markdown" },

  config = function()
    vim.g.mkdp_filetypes = { "markdown" }
  end,
}
