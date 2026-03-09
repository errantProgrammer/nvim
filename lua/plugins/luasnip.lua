return {
  "L3MON4D3/LuaSnip",
  -- follow latest release.
  version = "v2.4.1",
  config = function(_, opts)
    if opts then
      require("luasnip").setup(opts)
    end

    require("luasnip.loaders.from_lua").load({
      paths = { vim.fn.stdpath("config") .. "/snippets" },
    })
  end,
}
