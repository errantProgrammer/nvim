local prefix = "<leader>o"
return {
  {
    "obsidian-nvim/obsidian.nvim",
    version = "*", -- recommended, use latest release instead of latest commit
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      workspaces = {
        {
          name = "notes",
          path = "~/Documents/notes/",
        },
      },
      daily_notes = {
        folder = "Journal",
        default_tags = { "daily_notes" },
      },
    },
    templates = {
      subdir = "templates",
      date_format = "%Y-%m-%d-%a",
      gtime_format = "%H:%M",
      tags = "",
    },
    keys = {
      { prefix .. "o", "<cmd>Obsidian open<CR>", desc = "Open on App" },
      { prefix .. "g", "<cmd>Obsidian search<CR>", desc = "Grep" },
      { prefix .. "n", "<cmd>Obsidian new<CR>", desc = "New note" },
      { prefix .. "N", "<cmd>Obsidian new_from_template<CR>", desc = "New note(template)" },
      { prefix .. "<space>", "<cmd>Obsidian quick_switch<CR>", desc = "Find Files" },
      { prefix .. "b", "<cmd>Obsidian backlinks<CR>", desc = "Backlinks" },
      { prefix .. "t", "<cmd>Obsidian tags<CR>", desc = "Tags" },
      { prefix .. "T", "<cmd>Obsidian template<CR>", desc = "Template" },
      { prefix .. "L", "<cmd>Obsidian link<CR>", mode = "v", desc = "Link" },
      { prefix .. "l", "<cmd>Obsidian links<CR>", desc = "Links" },
      { prefix .. "l", "<cmd>Obsidian link_new<CR>", mode = "v", desc = "New Link" },
      { prefix .. "e", "<cmd>Obsidian extract_note<CR>", desc = "Extract Note" },
      { prefix .. "r", "<cmd>Obsidian rename<CR>", desc = "Rename" },
      { prefix .. "d", "<cmd>Obsidian dailies<CR>", desc = "Daily Notes" },
    },
  },
  {
    "folke/which-key.nvim",
    opts = {
      spec = {
        { prefix, group = "obsidian", icon = " ", mode = { "n", "v" } },
      },
    },
  },
}
