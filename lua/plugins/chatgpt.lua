return {
  "jackMort/ChatGPT.nvim",
  commit = "24bcca7",
  event = "VeryLazy",
  -- keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
  keys = {
    { "<leader>tc", "<cmd>ChatGPT<CR>", desc = "ChatGPT" },
    { "<leader>te", "<cmd>ChatGPTEditWithInstruction<CR>", desc = "Edit with instruction" },
    { "<leader>tg", "<cmd>ChatGPTRun grammar_correction<CR>", desc = "Grammar Correction" },
    { "<leader>tt", "<cmd>ChatGPTRun translate<CR>", desc = "Translate" },
    { "<leader>tk", "<cmd>ChatGPTRun keywords<CR>", desc = "Keywords" },
    { "<leader>td", "<cmd>ChatGPTRun docstring<CR>", desc = "Docstring" },
    { "<leader>ta", "<cmd>ChatGPTRun add_tests<CR>", desc = "Add Tests" },
    { "<leader>to", "<cmd>ChatGPTRun optimize_code<CR>", desc = "Optimize Code" },
    { "<leader>ts", "<cmd>ChatGPTRun summarize<CR>", desc = "Summarize" },
    { "<leader>tf", "<cmd>ChatGPTRun fix_bugs<CR>", desc = "Fix Bugs" },
    { "<leader>tx", "<cmd>ChatGPTRun explain_code<CR>", desc = "Explain Code" },
    { "<leader>tr", "<cmd>ChatGPTRun roxygen_edit<CR>", desc = "Roxygen Edit" },
    { "<leader>tl", "<cmd>ChatGPTRun code_readability_analysis<CR>", desc = "Code Readability Analysis" },
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
