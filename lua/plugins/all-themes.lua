return {
  -- Load all theme plugins but don't apply them
  -- This ensures all colorschemes are available for hot-reloading
  {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    lazy = false,
    priority = 1000,
  },
  {
    "embark-theme/vim",
    name = "embark",
    lazy = false,
    priority = 1000,
  },
  -- lazy
  {
    "ray-x/aurora",
    init = function()
      vim.g.aurora_italic = 1
      vim.g.aurora_transparent = 1
      vim.g.aurora_bold = 1
    end,
    config = function()
      vim.cmd.colorscheme("aurora")
      -- override defaults
      vim.api.nvim_set_hl(0, "@number", { fg = "#e933e3" })
    end,
  },
  -- 2. Configuracion de esquema a utilizar:
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "aurora",
    },
  },
}
