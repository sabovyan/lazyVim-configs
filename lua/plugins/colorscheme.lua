return {

  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
      on_highlights = function(hl, c)
        local prompt = "#2d3149"
        hl.TelescopeNormal = {
          bg = c.bg_dark,
          fg = c.fg_dark,
        }
        hl.TelescopeBorder = {
          bg = c.bg_dark,
          fg = c.bg_dark,
        }
        hl.TelescopePromptNormal = {
          bg = prompt,
        }
        hl.TelescopePromptBorder = {
          bg = prompt,
          fg = prompt,
        }
        hl.TelescopePromptTitle = {
          bg = prompt,
          fg = prompt,
        }
        hl.TelescopePreviewTitle = {
          bg = c.bg_dark,
          fg = c.bg_dark,
        }
        hl.TelescopeResultsTitle = {
          bg = c.bg_dark,
          fg = c.bg_dark,
        }
      end,
    })
  end,
}

-- return {
--   "navarasu/onedark.nvim",
--   priority = 1000,
--   config = function()
--     -- somewhere in your config:
--     vim.cmd("colorscheme onedark")
--   end,
-- }
-- return {
--   "neanias/everforest-nvim",
--   version = false,
--   lazy = false,
--   priority = 1000, -- make sure to load this before all the other start plugins
--   -- Optional; default configuration will be used if setup isn't called.
--   config = function()
--     require("everforest").setup({
--       -- Your config here
--       background = "hard",
--       transparent_background_level = 1,
--       italics = true,
--     })
--
--     vim.cmd([[colorscheme everforest]])
--   end,
-- }

-- return {
--
--   "sainnhe/everforest",
--   config = function()
--     -- vim.g.everforest_transparent_background = "1"
--     vim.cmd([[colorscheme everforest]])
--   end,
-- }
-- return {
--   -- add gruvbox
--   { "ellisonleao/gruvbox.nvim" },
--
--   -- Configure LazyVim to load gruvbox
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "gruvbox",
--     },
--   },
-- }

-- return {
--   "sainnhe/gruvbox-material",
--   config = function()
--     vim.cmd([[colorscheme gruvbox-material]])
--   end,
-- }

-- return {
--   "savq/melange-nvim",
--   config = function()
--     vim.cmd([[colorscheme melange]])
--   end,
-- }

-- return {
--   "ellisonleao/gruvbox.nvim",
--   priority = 1000,
--
--   config = function()
--     vim.o.background = "dark" -- or "light" for light mode
--     vim.cmd([[colorscheme gruvbox]])
--   end,
-- }

-- return {
--   "catppuccin/nvim",
--   lazy = false,
--   priority = 150,
--   name = "catppuccin",
--   config = function()
--     require("catppuccin").setup({
--       -- background = {
--       --   light = "latte",
--       --   dark = "mocha",
--       -- },
--       -- color_overrides = {
--       --   mocha = {
--       --     flamingo = "#EA6962",
--       --     pink = "#D3869B",
--       --     mauve = "#D3869B",
--       --     red = "#EA6962",
--       --     maroon = "#EA6962",
--       --     peach = "#BD6F3E",
--       --     yellow = "#D8A657",
--       --     green = "#A9B665",
--       --     teal = "#89B482",
--       --     sky = "#89B482",
--       --     sapphire = "#89B482",
--       --     blue = "#7DAEA3",
--       --     lavender = "#7DAEA3",
--       --     text = "#D4BE98",
--       --     subtext1 = "#BDAE8B",
--       --     subtext0 = "#A69372",
--       --     overlay2 = "#8C7A58",
--       --     overlay1 = "#735F3F",
--       --     overlay0 = "#958272",
--       --     surface2 = "#4B4F51",
--       --     surface1 = "#2A2D2E",
--       --     surface0 = "#232728",
--       --     base = "#1D2021",
--       --     mantle = "#191C1D",
--       --     crust = "#151819",
--       --   },
--       --   latte = {
--       --     rosewater = "#c14a4a",
--       --     flamingo = "#c14a4a",
--       --     pink = "#945e80",
--       --     mauve = "#945e80",
--       --     red = "#c14a4a",
--       --     maroon = "#c14a4a",
--       --     peach = "#c35e0a",
--       --     yellow = "#a96b2c",
--       --     green = "#6c782e",
--       --     teal = "#4c7a5d",
--       --     sky = "#4c7a5d",
--       --     sapphire = "#4c7a5d",
--       --     blue = "#45707a",
--       --     lavender = "#45707a",
--       --     text = "#654735",
--       --     subtext1 = "#7b5d44",
--       --     subtext0 = "#8f6f56",
--       --     overlay2 = "#a28368",
--       --     overlay1 = "#b6977a",
--       --     overlay0 = "#c9aa8c",
--       --     -- surface2 = "#A79C86",
--       --     -- surface1 = "#C9C19F",
--       --     -- surface0 = "#DFD6B1",
--       --     base = "#fbf1c7",
--       --     mantle = "#F3EAC1",
--       --     crust = "#E7DEB7",
--       --   },
--       -- },
--       styles = {
--         comments = { "italic" },
--         conditionals = { "italic" },
--         functions = { "italic" },
--         keywords = { "italic" },
--         strings = { "italic" },
--         -- loops = {},
--         -- variables = {},
--         -- numbers = {},
--         -- booleans = {},
--         -- properties = {},
--         -- types = {},
--         -- operators = {},
--       },
--       transparent_background = false,
--       show_end_of_buffer = false,
--       custom_highlights = function(colors)
--         return {
--           NormalFloat = { bg = colors.crust },
--           FloatBorder = { bg = colors.crust, fg = colors.crust },
--           VertSplit = { bg = colors.base, fg = colors.surface0 },
--           CursorLineNr = { fg = colors.mauve },
--           Pmenu = { bg = colors.crust, fg = "" },
--           PmenuSel = { bg = colors.surface0, fg = "" },
--           TelescopeSelection = { bg = colors.surface0 },
--           TelescopePromptCounter = { fg = colors.mauve },
--           TelescopePromptPrefix = { bg = colors.surface0 },
--           TelescopePromptNormal = { bg = colors.surface0 },
--           TelescopeResultsNormal = { bg = colors.mantle },
--           TelescopePreviewNormal = { bg = colors.crust },
--           TelescopePromptBorder = { bg = colors.surface0, fg = colors.surface0 },
--           TelescopeResultsBorder = { bg = colors.mantle, fg = colors.mantle },
--           TelescopePreviewBorder = { bg = colors.crust, fg = colors.crust },
--           TelescopePromptTitle = { fg = colors.surface0, bg = colors.surface0 },
--           TelescopeResultsTitle = { fg = colors.mantle, bg = colors.mantle },
--           TelescopePreviewTitle = { fg = colors.crust, bg = colors.crust },
--           IndentBlanklineChar = { fg = colors.surface0 },
--           IndentBlanklineContextChar = { fg = colors.surface2 },
--           GitSignsChange = { fg = colors.peach },
--           NvimTreeIndentMarker = { link = "IndentBlanklineChar" },
--           NvimTreeExecFile = { fg = colors.text },
--         }
--       end,
--     })
--
--     vim.api.nvim_command("colorscheme catppuccin")
--   end,
-- }
