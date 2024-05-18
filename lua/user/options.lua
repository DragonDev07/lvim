------ Local Vars ------
local formatters = require "lvim.lsp.null-ls.formatters"

------ PLUGINS ------
lvim.plugins = {
  { "catppuccin/nvim" },                     -- Catppuccin theme
  { "ghillb/cybu.nvim" },                    -- Cybu Buffer Switcher
  { "andweeb/presence.nvim" },               -- Discord Presence for Neovim
  { "fadein/vim-figlet" },                   -- Figlet generation in neovim
  { 'wakatime/vim-wakatime', lazy = false }, -- Wakatime
}

------ Themeing & Fonts ------
lvim.colorscheme = "catppuccin"        -- Set colorscheme (catppuccin best :D)
vim.o.guifont = "VictorMono Nerd Font" -- Set Font if using neovide gui
lvim.transparent_window = true         -- Make the window transparent

----- Start LaTeX -----
require("lspconfig").ltex.setup {}

----- Formatting -----
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

----- KEYBINDS -----
-- General --
lvim.keys.normal_mode["<S-x>"] = ":BufferKill<CR>" -- Press 'X' to close buffer
lvim.keys.normal_mode["<S-h>"] = ":CybuPrev<CR>"   -- Switch Buffer w/ Cybu (previous)
lvim.keys.normal_mode["<S-l>"] = ":CybuNext<CR>"   -- Switch Buffer w/ Cybu (next)
lvim.keys.normal_mode["|"] = ":vsplit<CR>"         -- Split Vertically (Without nvim tree)
lvim.keys.normal_mode["-"] = ":split<CR>"          -- Split horizontally (Without nvm tree)

-- Remove Arrow Keys --
lvim.keys.normal_mode["<Left>"] = "<Nop>"  -- Remove Left Arrow (Normal Mode)
lvim.keys.normal_mode["<Right>"] = "<Nop>" -- Remove Right Arrow (Normal Mode)
lvim.keys.normal_mode["<Up>"] = "<Nop>"    -- Remove Up Arrow (Normal Mode)
lvim.keys.normal_mode["<Down>"] = "<Nop>"  -- Remove Down Arrow (Normal Mode)

lvim.keys.visual_mode["<Left>"] = "<Nop>"  -- Remove Left Arrow (Visual Mode)
lvim.keys.visual_mode["<Right>"] = "<Nop>" -- Remove Right Arrow (Visual Mode)
lvim.keys.visual_mode["<Up>"] = "<Nop>"    -- Remove Up Arrow (Visual Mode)
lvim.keys.visual_mode["<Down>"] = "<Nop>"  -- Remove Down Arrow (Visual Mode)
