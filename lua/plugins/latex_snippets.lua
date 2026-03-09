return {
  {
    "iurimateus/luasnip-latex-snippets.nvim",
    ft = { "tex", "markdown" },
    dependencies = { "L3MON4D3/LuaSnip", "lervag/vimtex" },
    config = function()
      require("luasnip-latex-snippets").setup({
        use_treesitter = true,
        allow_on_markdown = false,
      })
      require("luasnip").config.setup({ enable_autosnippets = true })
    end,
  },
}
