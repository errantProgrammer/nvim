return {
  -- Plugin para renderizar imágenes
  "3rd/image.nvim",
  -- Solo cárgalo cuando lo necesites, por ejemplo, al entrar en un archivo Markdown
  ft = { "markdown", "text", "html", "typst" },
  opts = {
    -- Configuración básica (puedes omitir esto si solo quieres los valores por defecto)
    backend = "kitty", -- Asegúrate de que coincida con tu terminal (kitty, wezterm, etc.)
    integrations = {
      markdown = {
        only_render_image_at_cursor = true, -- defaults to false
        only_render_image_at_cursor_mode = "popup", -- "popup" or "inline", defaults to "popup"
      },
      typst = {
        only_render_image_at_cursor = true, -- defaults to false
        only_render_image_at_cursor_mode = "popup", -- "popup" or "inline", defaults to "popup"
      },
    },
  },
}
