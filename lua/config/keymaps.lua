-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local opts = { noremap = true, silent = true }

local keymap = vim.keymap.set

keymap("i", "jj", "<Esc>", opts)

-- to keei the cursor centered
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)

-- to keep last copied text and not deleted one
keymap("x", "<leader>p", '"_dP', opts)

keymap("n", "<leader>o", function()
  if vim.bo.filetype == "neo-tree" then
    vim.cmd.wincmd("p")
  else
    vim.cmd.Neotree("focus")
  end
end, {

  desc = "Focus Neo Tree",
})
