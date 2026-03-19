local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local r = ls.restore_node
local l = require("luasnip.extras").lambda
local rep = require("luasnip.extras").rep
local p = require("luasnip.extras").partial
local m = require("luasnip.extras").match
local dl = require("luasnip.extras").dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local parse = ls.parser.parser_snippet

local function filename()
  local name = vim.fn.expand("%:t:r")
  return { name }
end

return {
  s(
    "main",
    fmt(
      [[ 
---
id: {}
aliases: []
tags: []
---

# {}

{}
    ]],
      {
        f(filename, {}),
        f(filename, {}),
        i(1, "content"),
      }
    )
  ),
  s(
    "main-pucp",
    fmt(
      [[ 
    ---
    id: {}
    aliases: []
    tags:
    - pucp
    - {}
    - {}
    ---
    
    # {}
    
    {}
    ]],
      {
        f(filename, {}),
        i(1, "course-name"),
        i(2, "cycle"),
        f(filename, {}),
        i(3, "content"),
      }
    )
  ),
}
