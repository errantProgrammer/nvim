-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local scripts = require("config.scripts")

vim.api.nvim_create_user_command("CursoPucp", function()
  scripts.setup_course_structure({ semanas = 15, semestre = "26-1" })
end, { desc = "Generar estructura de curso 15 semanas" })

vim.api.nvim_create_user_command("CursoLinks", scripts.generate_readme_curso_pucp, { desc = "Generar links en README" })
