return {
  "jackMort/ChatGPT.nvim",
  commit = "24bcca7",
  event = "VeryLazy",
  -- keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
  keys = {
    { "<leader>hc", "<cmd>ChatGPT<CR>", desc = "ChatGPT" },
    { "<leader>he", "<cmd>ChatGPTEditWithInstruction<CR>", desc = "Edit with instruction" },
    { "<leader>hg", "<cmd>ChatGPTRun grammar_correction<CR>", desc = "Grammar Correction" },
    { "<leader>ht", "<cmd>ChatGPTRun translate<CR>", desc = "Translate" },
    { "<leader>hk", "<cmd>ChatGPTRun keywords<CR>", desc = "Keywords" },
    { "<leader>hd", "<cmd>ChatGPTRun docstring<CR>", desc = "Docstring" },
    { "<leader>ha", "<cmd>ChatGPTRun add_tests<CR>", desc = "Add Tests" },
    { "<leader>ho", "<cmd>ChatGPTRun optimize_code<CR>", desc = "Optimize Code" },
    { "<leader>hs", "<cmd>ChatGPTRun summarize<CR>", desc = "Summarize" },
    { "<leader>hf", "<cmd>ChatGPTRun fix_bugs<CR>", desc = "Fix Bugs" },
    { "<leader>hx", "<cmd>ChatGPTRun explain_code<CR>", desc = "Explain Code" },
    { "<leader>hr", "<cmd>ChatGPTRun roxygen_edit<CR>", desc = "Roxygen Edit" },
    { "<leader>hl", "<cmd>ChatGPTRun code_readability_analysis<CR>", desc = "Code Readability Analysis" },
  },
  config = function()
    local wk = require("which-key")
    local chatgpt = require("chatgpt")

    wk.register({
      t = {
        name = "ChatGPT",
        e = {
          function()
            chatgpt.edit_with_instructions()
          end,
          "Edit with instructions",
        },
      },
    }, {
      prefix = "<leader>",
      mode = "v",
    })
    chatgpt.setup()
  end,
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
}
