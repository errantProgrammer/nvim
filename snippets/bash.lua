local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node
local f = ls.function_node
local fmt = require("luasnip.extras.fmt").fmt
local parse = ls.parser.parser_snippet

return {
  s(
    "main",
    fmt(
      [[
#!/usr/bin/env bash

{}
]],
      {
        i(1),
      }
    )
  ),
}
