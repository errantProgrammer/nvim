local M = {}

function M.generar_toc_dinamico()
  local files = vim.fn.glob("docs/*.md", true, true)

  if #files == 0 then
    return { "*(No se encontraron archivos en la carpeta docs/)*" }
  end

  local toc_lines = { "## Tabla de Contenidos", "" }

  for _, filepath in ipairs(files) do
    local filename_no_ext = vim.fn.fnamemodify(filepath, ":t:r")
    local title = filename_no_ext:gsub("[-_]", " ")
    local link = string.format("- [%s](%s)", title, filepath)
    table.insert(toc_lines, link)
  end

  return toc_lines
end

return M
