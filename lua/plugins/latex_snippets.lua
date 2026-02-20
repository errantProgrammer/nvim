return {
  {
    "iurimateus/luasnip-latex-snippets.nvim",
    -- Este plugin contiene los snippets de Gilles Castel
    config = function()
      require("luasnip-latex-snippets").setup({
        use_treesitter = true, -- Usa Treesitter para saber si estás en una fórmula
      })
      -- Importante: Permite que los snippets se activen automáticamente al escribir
      require("luasnip").config.setup({ enable_autosnippets = true })
    end,
    -- Asegúrate de que cargue después de LuaSnip
    dependencies = { "L3MON4D3/LuaSnip", "nvim-treesitter/nvim-treesitter" },
  },
}
