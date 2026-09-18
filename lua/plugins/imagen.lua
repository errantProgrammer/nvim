return {
  "3rd/image.nvim",
  -- Solo cárgalo cuando lo necesites, por ejemplo, al entrar en un archivo Markdown
  ft = { "markdown", "text", "html", "typst", "latex", "tex" },
  opts = {
    backend = "kitty",
    integrations = {
      markdown = {
        only_render_image_at_cursor = true,
        only_render_image_at_cursor_mode = "inline", -- "popup" or "inline", defaults to "popup"
      },
      typst = {
        only_render_image_at_cursor = true, -- defaults to false
        only_render_image_at_cursor_mode = "inline", -- "popup" or "inline", defaults to "popup"
      },
    },
  },
}
