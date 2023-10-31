-- PLUGINS --
lvim.plugins = {
  {"catppuccin/nvim"}, -- Catppuccin theme
  {"ghillb/cybu.nvim"}, -- Cybu Buffer Switcher
  {"andweeb/presence.nvim"}, -- Discord Presence for Neovim
  {"fadein/vim-figlet"}, -- Figlet generation in neovim
  {"iamcco/markdown-preview.nvim", -- Preview Markdown files
  	ft={"markdown"},
	  build = function() vim.fn["mkdp#util#install"]() end,
  },
  {"nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("neorg").setup {
        load = {
          ["core.defaults"] = {}, -- Loads default behaviour
          ["core.concealer"] = {}, -- Adds pretty icons to your documents
          ["core.export"] = {}, -- Export norg files to other formats
          ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
              workspaces = {
                notes = "~/notes",
              },
            },
          },
        },
      }
    end,
  },
 }

-- MISC --
lvim.colorscheme = "catppuccin" -- Set colorscheme (catppuccin best :D)
vim.o.guifont = "VictorMono Nerd Font" -- Set Font if using neovide gui
lvim.transparent_window = true
vim.g.mkdp_auto_start = 0
vim.g.mkdp_theme = 'light'

-- KEYBINDS --
lvim.keys.normal_mode["<S-x>"] = ":BufferKill<CR>" -- Press 'X' to close buffer
lvim.keys.normal_mode["<S-h>"] = ":CybuPrev<CR>" -- Switch Buffer w/ Cybu (previous)
lvim.keys.normal_mode["<S-l>"] = ":CybuNext<CR>" -- Switch Buffer w/ Cybu (next)
lvim.keys.normal_mode["|"] = ":vsplit<CR>" -- Split Vertically (Without nvim tree)
lvim.keys.normal_mode["-"] = ":split<CR>" -- Split horizontally (Without nvm tree)
lvim.keys.normal_mode["<C-p>"] = ":MarkdownPreview<CR>" -- Start markdown preview with Ctrl _ P
