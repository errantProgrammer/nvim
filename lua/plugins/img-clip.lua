return {
  "HakonHarnes/img-clip.nvim",
  event = "VeryLazy",
  opts = {
    default = {
      debug = false,
      insert_mode_after_paste = true,
      template = "$FILE_PATH",
      url_encode_path = true,
      use_cursor_in_template = true,

      dir_path = function()
        local file_extension = vim.fn.expand("%:e")
        local base_name = vim.fn.expand("%:t:r")
        if file_extension == "tex" then
          return "figure/" .. base_name
        else
          return "images/" .. base_name
        end
      end,
      file_name = "%Y-%m-%d-%H-%M-%S",

      use_absolute_path = false,
      relative_to_current_file = true,

      prompt_for_file_name = true,
      show_dir_path_in_prompt = true,
      --
      -- embed_image_as_base64 = false,
      -- max_base64_size = 10,

      drag_and_drop = {
        enabled = true,
        insert_mode = true,
        copy_images = true,
        download_images = true,
      },
    },
  },
  keys = {
    -- suggested keymap
    -- add options here
    -- or leave it empty to use the default settings
    { "<leader>p", "<cmd>PasteImage<cr>", desc = "Paste image from system clipboard" },
  },
}
