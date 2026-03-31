return {
  -- Load all theme plugins but don't apply them
  -- This ensures all colorschemes are available for hot-reloading
  {
    "scottmckendry/cyberdream.nvim",
    name = "cyberdream",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
    },
  },
  {
    "cpea2506/one_monokai.nvim",
    lazy = true,
    priority = 1000,
    opts = {
      transparent = true,
    },
  },
  {
    "ribru17/bamboo.nvim",
    lazy = true,
    priority = 1000,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
    priority = 1000,
  },
  {
    "sainnhe/everforest",
    lazy = true,
    priority = 1000,
  },
  {
    "kepano/flexoki-neovim",
    lazy = true,
    priority = 1000,
  },
  {
    "ellisonleao/gruvbox.nvim",
    lazy = true,
    priority = 1000,
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = true,
    priority = 1000,
  },
  {
    "tahayvr/matteblack.nvim",
    lazy = true,
    priority = 1000,
  },
  {
    "loctvl842/monokai-pro.nvim",
    lazy = true,
    priority = 1000,
  },
  {
    "shaunsingh/nord.nvim",
    lazy = true,
    priority = 1000,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = true,
    priority = 1000,
  },
  {
    "folke/tokyonight.nvim",
    lazy = true,
    priority = 1000,
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = true,
    priority = 1000,
    name = "kanagawa",
    opts = {
      transparent = true,
      theme = "dragon",
      background = {
        dark = "dragon",
      },
    },
  },
  -- 2. Configuracion de esquema a utilizar:
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
}
