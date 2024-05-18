-- Local Vars --
local formatters = require "lvim.lsp.null-ls.formatters"

-- PLUGINS --
lvim.plugins = {
  { "catppuccin/nvim" },                     -- Catppuccin theme
  { "ghillb/cybu.nvim" },                    -- Cybu Buffer Switcher
  { "andweeb/presence.nvim" },               -- Discord Presence for Neovim
  { "fadein/vim-figlet" },                   -- Figlet generation in neovim
  { 'wakatime/vim-wakatime', lazy = false }, -- Wakatime
  {
    "iamcco/markdown-preview.nvim",          -- Preview Markdown files
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
  },
}

-- Themeing & Fonts --
lvim.colorscheme = "catppuccin"        -- Set colorscheme (catppuccin best :D)
vim.o.guifont = "VictorMono Nerd Font" -- Set Font if using neovide gui
lvim.transparent_window = true         -- Make the window transparent

-- Markdown Preview Settings --
vim.g.mkdp_auto_start = 1  -- Make it so that when a markdown file is open, it will launch the preview
vim.g.mkdp_theme = 'light' -- Make it so that the preview defaults to light mode

-- Start LaTeX --
require("lspconfig").ltex.setup {}

-- Formatting --
lvim.format_on_save.enabled = true
formatters.setup {
  {
    name = "prettier",
    args = { "--tab-width", "2" },
  },
  {
    name = "clang_format",
    filetypes = { "java" },
  },
  {
    name = "rustfmt",
    filetypes = { "rust" },
  }
}

-- KEYBINDS --
lvim.keys.normal_mode["<S-x>"] = ":BufferKill<CR>"      -- Press 'X' to close buffer
lvim.keys.normal_mode["<S-h>"] = ":CybuPrev<CR>"        -- Switch Buffer w/ Cybu (previous)
lvim.keys.normal_mode["<S-l>"] = ":CybuNext<CR>"        -- Switch Buffer w/ Cybu (next)
lvim.keys.normal_mode["|"] = ":vsplit<CR>"              -- Split Vertically (Without nvim tree)
lvim.keys.normal_mode["-"] = ":split<CR>"               -- Split horizontally (Without nvm tree)
lvim.keys.normal_mode["<C-p>"] = ":MarkdownPreview<CR>" -- Start markdown preview with Ctrl _ P
lvim.keys.normal_mode["<Left>"] = "<Nop>"               -- Remove Left Arrow (USE HJKL)
lvim.keys.normal_mode["<Right>"] = "<Nop>"              -- Remove Left Arrow (USE HJKL)
lvim.keys.normal_mode["<Up>"] = "<Nop>"                 -- Remove Left Arrow (USE HJKL)
lvim.keys.normal_mode["<Down>"] = "<Nop>"               -- Remove Left Arrow (USE HJKL)
