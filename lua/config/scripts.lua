local M = {}

function M.setup_course_structure(opts)
  local current_file_dir = vim.fn.expand("%:p:h")

  local curso = opts.curso or vim.fn.fnamemodify(current_file_dir, ":t")
  local semestre = opts.semestre or "26-1"
  local total_semanas = opts.semanas or 15

  local docs_dir = current_file_dir .. "/docs"

  if vim.fn.isdirectory(docs_dir) == 0 then
    vim.fn.mkdir(docs_dir, "p")
  end

  for i = 1, total_semanas do
    local semana = string.format("semana%02d", i)
    local file_path = docs_dir .. "/" .. semana .. ".md"

    if vim.fn.filereadable(file_path) == 0 then
      local file = io.open(file_path, "w")
      if file then
        local content = string.format(
          [[
---
id: %s
aliases: []
tags:
- pucp
- %s
- %s
---

# %s
]],
          semana,
          curso,
          semestre,
          semana
        )
        file:write(content)
        file:close()
      end
    end
  end

  vim.notify("Estructura para '" .. curso .. "' creada en: " .. docs_dir, vim.log.levels.INFO)
end

function M.generate_readme_curso_pucp()
  local current_file_dir = vim.fn.expand("%:p:h")
  local docs_dir = current_file_dir .. "/docs"
  local readme_path = current_file_dir .. "/README.md"

  if vim.fn.isdirectory(docs_dir) == 0 then
    vim.notify("No se encontró la carpeta docs", vim.log.levels.ERROR)
  end

  local files = vim.fn.readdir(docs_dir)
  table.sort(files)
  local links_content = "\n## Índice de Contenidos\n\n"
  local count = 0
  for _, file in ipairs(files) do
    if file:match("%.md$") then
      local display_name = file:gsub("%.md$", ""):gsub("^%l", string.upper):gsub("(%d+)", " %1")
      links_content = links_content .. string.format("- [%s](./docs/%s)\n", display_name, file)
      count = count + 1
    end
  end

  local f = io.open(readme_path, "a")
  if f then
    f:write(links_content)
    f:close()

    vim.cmd("checktime")
    vim.notify("Se han agregado " .. count .. " links al README.md", vim.log.levels.INFO)
  else
    vim.notify("No se pudo abrir o crear el README.md", vim.log.levels.ERROR)
  end
end

return M
