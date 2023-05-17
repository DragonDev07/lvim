-- PLUGINS --
lvim.plugins = {
  {"catppuccin/nvim"}, -- Catppuccin theme
  {"ghillb/cybu.nvim"}, -- Cybu Buffer Switcher
  {"andweeb/presence.nvim"}, -- Discord Presence for Neovim
}

lvim.colorscheme = "lunar" -- Set colorscheme (catppuccin best :D)

-- KEYBINDS --
lvim.keys.normal_mode["<S-x>"] = ":BufferKill<CR>" -- Press 'X' to close buffer
lvim.keys.normal_mode["<S-h>"] = ":CybuPrev<CR>" -- Switch Buffer w/ Cybu (previous)
lvim.keys.normal_mode["<S-l>"] = ":CybuNext<CR>" -- Switch Buffer w/ Cybu (next)
lvim.keys.normal_mode["|"] = ":vsplit<CR>" -- Split Vertically (Without nvim tree)
lvim.keys.normal_mode["-"] = ":split<CR>" -- Split horizontally (Without nvm tree)
